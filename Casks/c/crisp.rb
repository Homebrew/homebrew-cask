cask "crisp" do
  version "1.6.0"
  sha256 "06f464a7c35f2e23b3a38771a62623ae1b911a805aa11d3ea8ad9cbac3efd889"

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
