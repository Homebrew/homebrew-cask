cask "keyboard-maestro" do
  version "10.0"
  sha256 "e7d3bf085c17b5f6d66d6c3128ed0eada7319b244048b920c5ccd833de669776"

  url "https://files.stairways.com/keyboardmaestro-#{version.no_dots}.zip",
      verified: "stairways.com/"
  name "Keyboard Maestro"
  desc "Automation software"
  homepage "https://www.keyboardmaestro.com/main/"

  livecheck do
    url "https://files.stairways.com/index.html"
    strategy :page_match
    regex(/href=.*?\.zip.*?Keyboard\s*Maestro\s*(\d+(\.\d+)*)/i)
  end

  auto_updates true
  depends_on macos: ">= :el_capitan"

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
