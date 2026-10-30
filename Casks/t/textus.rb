cask "textus" do
  arch arm: "aarch64", intel: "x64"

  version "1.2.10"
  sha256 arm:   "fce9ca2a508045b79786755c26b0694cbac10e3b13e52087fbe21aec55b8da29",
         intel: "2191bf84e168afbbff0302182bbeb26ab23556891c392883ae57d786bc985503"

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
