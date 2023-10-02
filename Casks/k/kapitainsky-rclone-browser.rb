cask "kapitainsky-rclone-browser" do
  version "1.8.0,a0b66c6"
  sha256 "44465643aa1a8b87ff9d68410567045674e3d979e789f8b0bd2953e1ebf7e715"

  url "https://github.com/kapitainsky/RcloneBrowser/releases/download/#{version.csv.first}/rclone-browser-#{version.csv.first}-#{version.csv.second}-macos.dmg"
  name "Rclone Browser"
  desc "GUI for rclone"
  homepage "https://github.com/kapitainsky/RcloneBrowser"

  livecheck do
    url :url
    regex(/^rclone-browser[._-]v?(\d+(?:\.\d+)+)-([0-9a-f]+)-macos\.dmg/i)
    strategy :github_latest do |json, regex|
      json["assets"]&.map do |asset|
        match = asset["name"]&.match(regex)
        next if match.blank?

        "#{match[1]},#{match[2]}"
      end
    end
  end

  depends_on formula: "rclone"

  app "Rclone Browser.app"
end
