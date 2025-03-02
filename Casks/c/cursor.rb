cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.45.17,7c00f62dd81412c8defe2b64b4d32d06e0a7e727"
  sha256 arm:   "737d4ed8dd677b06774983a7be671f6000f312ca2aeee20aee8bfa377bdc217d",
         intel: "da500c16a59a444b34e782cc95a001e9d8ef8f706c6e5cf638b9ee62137c83fc"

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
