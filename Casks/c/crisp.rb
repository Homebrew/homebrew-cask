cask "crisp" do
  version "1.7.0"
  sha256 "1bd77cc07ceff6219e49604f613773a33362a361dcc2523ab6fe4834396d09df"

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
