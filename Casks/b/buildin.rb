cask "buildin" do
  arch arm: "-arm64"

  version "2.1.4"
  sha256 arm:   "ac2b915e1eb125f53724062ef30603234e26fb48c2affd72ab9f58efd1755ac3",
         intel: "0d3c92366743f8ca6f7b64e9cee1dc913d8b9cfdbe087de4ac9ed4679a3da1e1"

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
