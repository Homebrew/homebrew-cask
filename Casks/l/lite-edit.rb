cask "lite-edit" do
  version "1.1.3"
  sha256 "ccb9d007f4d4cc2fdbf57f5a073362d500fcdfd311bc8a871a3e961aa6bc53b6"

  url "https://github.com/arietan/lite-edit/releases/download/v#{version}/LiteEdit.dmg"
  name "LiteEdit"
  desc "Lightweight, fast code editor"
  homepage "https://github.com/arietan/lite-edit"

  depends_on macos: ">= :ventura"

  app "LiteEdit.app"

  zap trash: [
    "~/Library/Application Support/CrashReporter/LiteEdit_*.plist",
    "~/Library/Preferences/com.liteedit.app.plist",
  ]
end
