cask "cursor" do
  arch arm: "arm64", intel: "x64"

  version "0.46.9,3395357a4ee2975d5d03595e7607ee84e3db0f2c"
  sha256 arm:   "9b2606fdd735a98efe89c95c123e32e66f9c6365dc26ce13de83615381e7bdf5",
         intel: "2b4223d038d0cf92a5af2c8203f18d0e9c14f2b3cbccc805a81a60cce46204c6"

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
