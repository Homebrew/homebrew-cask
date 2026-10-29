cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.7"
  sha256 arm:   "87cc95add5296e6af2d1c9f633950271237d731cedf4238bedd3f75200fe2b07",
         intel: "d47f2632c9c8db9f534e0238902a462e5e4fb086f1bff7971d37dfaa6378a30e"

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
