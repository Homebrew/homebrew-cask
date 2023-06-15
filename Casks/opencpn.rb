cask "opencpn" do
  version "5.8.4,0+637.1637c28"
  sha256 "2c3dc08908c002dcfe61a67b8e594a14d4de7ec486f6e44fc4ddc18219b65b44"

  url "https://github.com/OpenCPN/OpenCPN/releases/download/Release_#{version.csv.first}/OpenCPN_#{version.csv.first}-#{version.csv.second}.pkg",
      verified: "github.com/OpenCPN/OpenCPN/"
  name "OpenCPN"
  desc "Full-featured and concise ChartPlotter/Navigator"
  homepage "https://www.opencpn.org/"

  livecheck do
    url "https://github.com/OpenCPN/OpenCPN/releases/latest"
    regex(%r{href=.*?/OpenCPN[._-]?v?(\d+(?:\.+\d+)+)[._-]?([0-9]?[+-]?\d*\.[0-9a-z]*)\.pkg}i)
    strategy :header_match do |headers, regex|
      next if headers["location"].blank?

      # Identify the latest tag from the response's `location` header
      latest_tag = File.basename(headers["location"])
      next if latest_tag.blank?

      # Fetch the assets list HTML for the latest tag and match within it
      assets_page = Homebrew::Livecheck::Strategy.page_content(
        @url.sub(%r{/releases/?.+}, "/releases/expanded_assets/#{latest_tag}"),
      )
      assets_page[:content]&.scan(regex)&.map { |match| "#{match[0]},#{match[1]}" }
    end
  end

  pkg "OpenCPN_#{version.csv.first}-#{version.csv.second}.pkg"

  uninstall pkgutil: [
    "org.opencpn.pkg.OpenCPN",
    "org.opencpn",
  ]

  zap trash: [
    "~/Library/Logs/opencpn.log",
    "~/Library/Preferences/opencpn",
    "~/Library/Preferences/org.opencpn.plist",
    "~/Library/Saved Application State/org.opencpn.savedState",
  ]
end
