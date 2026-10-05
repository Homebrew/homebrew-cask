cask "buildin" do
  arch arm: "-arm64"

  version "2.0.4"
  sha256 arm:   "95b932e0aca932604611ddd6a13eeeeb469ad190189bfa4f84e6ab8eb1cd4cb9",
         intel: "29713356a52ecc94c92430cf6b0e5e606811e19cb809ed6a93023f7ef4c72f57"

  url "https://cdn2.buildin.ai/website-oversea/download/Buildin-#{version}#{arch}.dmg"
  name "Buildin"
  desc "Collaborative workspace for notes, documents and wikis"
  homepage "https://buildin.ai/"

  livecheck do
    url "https://buildin.ai/download"
    regex(/Buildin[._-]v?(\d+(?:\.\d+)+)#{arch}\.dmg/i)
  end

  depends_on :macos

  app "Buildin.app"

  zap trash: [
    "~/Library/Application Support/Buildin",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.coasis.buildin.ai.sfl*",
    "~/Library/Preferences/com.coasis.buildin.ai.plist",
  ]
end
