cask "keyboard-maestro" do
  version "9.2"
  sha256 "a3a25d0663074e726e4d89692196f2e4a5b7ae013b5f3ed9eb1aae784d457c5d"

  url "https://files.stairways.com/keyboardmaestro-#{version.no_dots}.zip",
      verified: "stairways.com/"
  appcast "https://www.keyboardmaestro.com/action/sivc?M&U&08248000&6ABF5EF7&xxxxxxxx&00000000&000010E0&KM&EN"
  name "Keyboard Maestro"
  homepage "https://www.keyboardmaestro.com/main/"

  auto_updates true
  depends_on macos: ">= :yosemite"

  app "Keyboard Maestro.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.stairways.keyboardmaestro.editor.sfl*",
    "~/Library/Application Support/Keyboard Maestro",
    "~/Library/Caches/com.stairways.keyboardmaestro.editor",
    "~/Library/Caches/com.stairways.keyboardmaestro.engine",
    "~/Library/Logs/Keyboard Maestro",
    "~/Library/Preferences/com.stairways.keyboardmaestro.editor.plist",
    "~/Library/Preferences/com.stairways.keyboardmaestro.engine.plist",
    "~/Library/Preferences/com.stairways.keyboardmaestro.plist",
    "~/Library/Saved Application State/com.stairways.keyboardmaestro.editor.savedState",
  ]
end
