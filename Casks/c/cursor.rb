cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.47.4,8f8a2000673d2c48f6cac5eea2f3f9f2ed5e4ec2"
  sha256 arm:   "10e88a2a111adaf35fd898816b82ae1cba89f8b11d647f29d0bab6b04d557d9d",
         intel: "6e7054d8fcb40f3b887c3484a3cc7b88ca103309ae84ae2a2a181763d814f7ce"

  url "https://anysphere-binaries.s3.us-east-1.amazonaws.com/production/#{version.csv.second}/darwin/#{arch}/Cursor-darwin-#{arch}.zip",
      verified: "anysphere-binaries.s3.us-east-1.amazonaws.com/"
  name "Cursor"
  desc "Write, edit, and chat about your code with AI"
  homepage "https://www.cursor.com/"

  livecheck do
    url "https://api2.cursor.sh/updates/api/update/darwin-#{arch}/cursor/0.0.0/"
    regex(%r{/production/(\h+)/darwin/#{arch}/Cursor[._-]darwin[._-]#{arch}\.zip}i)
    strategy :json do |json, regex|
      match = json["url"]&.match(regex)
      next if match.blank?

      "#{json["name"]},#{match[1]}"
    end
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "Cursor.app"
  binary "#{appdir}/Cursor.app/Contents/Resources/app/bin/code", target: "cursor"

  zap trash: [
    "~/.cursor",
    "~/.cursor-tutor",
    "~/Library/Application Support/Caches/cursor-updater",
    "~/Library/Application Support/Cursor",
    "~/Library/Caches/com.todesktop.*",
    "~/Library/Caches/com.todesktop.*.ShipIt",
    "~/Library/HTTPStorages/com.todesktop.*",
    "~/Library/Logs/Cursor",
    "~/Library/Preferences/ByHost/com.todesktop.*.ShipIt.*.plist",
    "~/Library/Preferences/com.todesktop.*.plist",
    "~/Library/Saved Application State/com.todesktop.*.savedState",
    "~/Library/Saved Application State/todesktop.com.ToDesktop-Installer.savedState",
  ]
end
