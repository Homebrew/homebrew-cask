cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.3.1"
  sha256 arm:   "9cd259be84d641e72b8497872a620537146e55dd0aee9be564bb35583686e9cd",
         intel: "7fff0361a2a2d837441a753fece9f2d82e7dd410caa68ba34bbb18399510a78c"

  url "https://github.com/CatVinci-Studio/Textus/releases/download/v#{version}/Textus_#{version}_#{arch}.dmg"
  name "Textus"
  desc "WYSIWYG Markdown editor with built-in AI writing tools"
  homepage "https://textus.catvinci.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on :macos

  app "Textus.app"

  zap trash: [
    "~/Library/Application Support/com.catvinci.textus",
    "~/Library/Caches/com.catvinci.textus",
    "~/Library/Preferences/com.catvinci.textus.plist",
    "~/Library/Saved Application State/com.catvinci.textus.savedState",
    "~/Library/WebKit/com.catvinci.textus",
  ]
end
