cask "popsql" do
  arch arm: "-arm64"

  version "1.0.133"
  sha256 arm:   "6e0c457888ef7964e3c84d1c0f2179d213885e99ef5bae8f3f4b4421c5fc629f",
         intel: "7575074d2c56d99a9f3844d9699a77039aff8f6261f43d0e5f29053909e7c751"

  url "https://popsql-releases.s3.amazonaws.com/mac/PopSQL-#{version}#{arch}.dmg",
      verified: "popsql-releases.s3.amazonaws.com/"
  name "PopSQL"
  desc "Collaborative SQL editor"
  homepage "https://popsql.com/"

  livecheck do
    url "https://popsql-releases.s3.amazonaws.com/mac/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :catalina"

  app "PopSQL.app"

  zap trash: [
    "~/.popsql.json",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/org.electron.popsql.sfl*",
    "~/Library/Application Support/PopSQL",
    "~/Library/Preferences/org.electron.popsql.plist",
    "~/Library/Saved Application State/org.electron.popsql.savedState",
  ]
end
