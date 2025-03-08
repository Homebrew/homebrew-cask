cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.46.11,ae378be9dc2f5f1a6a1a220c6e25f9f03c8d4e19"
  sha256 arm:   "4340f8037df9bd59d20f2c1a809c58231f9c5b692d77c9a840e5aab64fd291ef",
         intel: "c6855b29306b21744a81ee37c7330a4f78156a4d9e92e3e315aa456fcf6ca83d"

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
