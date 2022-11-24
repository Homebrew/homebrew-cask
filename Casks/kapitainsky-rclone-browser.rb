cask "kapitainsky-rclone-browser" do
  version "1.8.0,a0b66c6"
  sha256 "44465643aa1a8b87ff9d68410567045674e3d979e789f8b0bd2953e1ebf7e715"

  url "https://github.com/kapitainsky/RcloneBrowser/releases/download/#{version.csv.first}/rclone-browser-#{version.csv.first}-#{version.csv.second}-macos.dmg"
  name "Rclone Browser"
  desc "GUI for rclone"
  homepage "https://github.com/kapitainsky/RcloneBrowser"

  livecheck do
    url "https://github.com/kapitainsky/RcloneBrowser/releases/latest"
    regex(%r{href=.*?/rclone-browser-(\d+(?:.\d+)*)-([0-9a-f]+)-macos\.dmg}i)
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

  depends_on formula: "rclone"

  app "Rclone Browser.app"
end
