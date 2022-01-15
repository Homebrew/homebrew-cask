cask "kapitainsky-rclone-browser" do
  version "1.8.0,a0b66c6"
  sha256 "44465643aa1a8b87ff9d68410567045674e3d979e789f8b0bd2953e1ebf7e715"

  url "https://github.com/kapitainsky/RcloneBrowser/releases/download/#{version.csv.first}/rclone-browser-#{version.csv.first}-#{version.csv.second}-macos.dmg"
  name "Rclone Browser"
  homepage "https://github.com/kapitainsky/RcloneBrowser"

  livecheck do
    url "https://github.com/kapitainsky/RcloneBrowser/releases/latest"
    strategy :page_match do |page|
      match = page.match(%r{href=.*?/rclone-browser-(\d+(?:.\d+)*)-([0-9a-f]+)-macos\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on formula: "rclone"

  app "Rclone Browser.app"
end
