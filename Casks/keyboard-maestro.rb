cask "keyboard-maestro" do
  version "10.1.1,1011"
  sha256 "6076df7010c3212f8c55d33023ad7d810dd585435ac11c8c8ceee2fe1fdc6bac"

  url "https://files.stairways.com/keyboardmaestro-#{version.csv.second}.zip",
      verified: "stairways.com/"
  name "Keyboard Maestro"
  desc "Automation software"
  homepage "https://www.keyboardmaestro.com/main/"

  livecheck do
    url "https://files.stairways.com/index.html"
    strategy :page_match do |page|
      match = page.match(/href=.*?keyboardmaestro[._-]v?(\d+)\.zip.*?Maestro\s*(\d+(?:\.\d+)+)/i)
      next if match.blank?

      "#{match[2]},#{match[1]}"
    end
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
