cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.4.3"
  sha256 arm:   "178208f71d8450d9ba52bc7f2941974d3e2439cdec72657bd9ba7115075489c9",
         intel: "b93a50ba6a75904a3d9f3e450d1a486a20cdaf1c1fe4265e6c5f379dcdafb19f"

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
