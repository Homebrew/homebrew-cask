cask "crisp" do
  version "1.7.1"
  sha256 "b24ebe3e78158abd437b3026b1c36f70259741bc9aa046a131d4072d97bcaf56"

  url "https://github.com/didriksg/Crisp/releases/download/v#{version}/Crisp.dmg"
  name "Crisp"
  desc "Menu bar display manager: DDC brightness, HiDPI, presets, virtual displays"
  homepage "https://crispmac.app/"

  auto_updates true
  depends_on macos: :sonoma

  app "Crisp.app"
  binary "#{appdir}/Crisp.app/Contents/MacOS/crispctl"

  uninstall quit:       "com.crisp.app",
            login_item: "Crisp"

  zap trash: [
    "~/Library/Application Support/Crisp",
    "~/Library/Caches/com.crisp.app",
    "~/Library/Caches/com.crisp.app.sparkle",
    "~/Library/HTTPStorages/com.crisp.app",
    "~/Library/Preferences/com.crisp.app.plist",
  ]
end
