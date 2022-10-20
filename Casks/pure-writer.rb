cask "pure-writer" do
  version "1.6.0,1.6.0"
  sha256 "69ee93d99c4946b4ebeffdea5d3b5b4f77e9df6645ffe019cbb7f1e23a033912"

  url "https://github.com/PureWriter/desktop/releases/download/#{version.csv.second}/PureWriter-#{version.csv.first}-macOS.dmg",
      verified: "github.com/PureWriter/desktop/"
  name "Pure Writer Desktop"
  desc "Desktop version of the Android app"
  homepage "https://writer.drakeet.com/desktop"

  livecheck do
    url "https://github.com/PureWriter/desktop/releases/latest"
    regex(%r{href=.*?([^/]+)/PureWriter[._-]v?(\d+(?:\.\d+)+)-macOS\.dmg}i)
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

  pkg "Pure Writer-#{version.csv.second}.pkg"

  uninstall pkgutil: "com.drakeet.purewriter"

  zap trash: "~/Library/Preferences/com.drakeet.purewriter.plist"
end
