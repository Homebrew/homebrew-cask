cask "keyboard-maestro" do
  version "10.0"
  sha256 "04946ffc9606f2ea22e964ab3d05123d144ffa5f00e32a3081fe76d7ec4802ee"

  # Versions >= 10 need to be X.Y.Z to avoid conflicting with 1.0.Z versions.
  # The version in the package may be X.Y or X.Y.Z.
  url_version = version.clone
  url_version.concat(".0") if version.major.to_i >= 10 && version.split(".").length < 3

  url "https://files.stairways.com/keyboardmaestro-#{url_version.no_dots}.zip",
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
