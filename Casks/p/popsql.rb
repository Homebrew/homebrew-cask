cask "popsql" do
  arch arm: "-arm64"

  version "1.0.135"
  sha256 arm:   "2a1e9af94cb191b80771c8bbb1952a85b628402fd6e783d91b2231d48236ae00",
         intel: "d6ab634d6d6af2f2e3a6715b31498b506fe5610ffd8e294cd28d47f3bf761782"

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
