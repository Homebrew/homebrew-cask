cask "duplicati" do
  arch arm: "arm64", intel: "x64"

  version "2.4.1.1,2026-11-25"
  sha256 arm:   "c976df9fa9fc912e120e5ee444cd49806e4d413c9397762f6ccc4b028f06c162",
         intel: "f70e7fbf41dfa3c1bcd6f40286593163bbe8b263f3c033ee3b5f515ac3f88567"

  url "https://updates.duplicati.com/stable/duplicati-#{version.csv.first}_stable_#{version.csv.second}-osx-#{arch}-gui.dmg"
  name "Duplicati"
  desc "Store securely encrypted backups in the cloud"
  homepage "https://duplicati.com/"

  livecheck do
    url "https://updates.duplicati.com/stable/latest-v2.manifest"
    regex(/duplicati[._-]v?(\d+(?:\.\d+)+)[._-]stable[._-](\d+(?:[.-]\d+)+)[._-]osx[._-]#{arch}[._-]gui\.dmg/i)
    strategy :page_match do |page, regex|
      match = page.match(regex)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: :monterey

  app "Duplicati.app"
  binary "#{appdir}/Duplicati.app/Contents/MacOS/duplicati-aescrypt"
  binary "#{appdir}/Duplicati.app/Contents/MacOS/duplicati-backend-tool"
  binary "#{appdir}/Duplicati.app/Contents/MacOS/duplicati-cli"
  binary "#{appdir}/Duplicati.app/Contents/MacOS/duplicati-configure"
  binary "#{appdir}/Duplicati.app/Contents/MacOS/duplicati-database-tool"
  binary "#{appdir}/Duplicati.app/Contents/MacOS/duplicati-recovery-tool"
  binary "#{appdir}/Duplicati.app/Contents/MacOS/duplicati-secret-tool"
  binary "#{appdir}/Duplicati.app/Contents/MacOS/duplicati-server"
  binary "#{appdir}/Duplicati.app/Contents/MacOS/duplicati-server-util"
  binary "#{appdir}/Duplicati.app/Contents/MacOS/duplicati-source-tool"
  binary "#{appdir}/Duplicati.app/Contents/MacOS/duplicati-sync-tool"

  zap trash: [
    "~/.config/Duplicati",
    "~/Library/Application Support/Duplicati",
    "~/Library/Preferences/com.duplicati.app.plist",
  ]
end
