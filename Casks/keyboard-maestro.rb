cask "keyboard-maestro" do
  version "10.0.2,1002"
  sha256 "a9618a7bdfd3151e8738eaf6e2e3cc09fba1c733c517a6cf378b7913857b8fc8"

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
