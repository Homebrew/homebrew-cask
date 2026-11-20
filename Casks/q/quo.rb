cask "quo" do
  version "5.7.4"
  sha256 "6d4b7279a0d83aa5850740c4f610029989ab9aefa888254e9074c8c7738673ca"

  url "https://download.quo.com/Quo-#{version}-universal.dmg"
  name "Quo"
  desc "Business phone for professionals, teams, and companies"
  homepage "https://www.quo.com/"

  livecheck do
    url "https://s3-us-west-2.amazonaws.com/download.openphone.co/latest-mac.yml"
    strategy :electron_builder
  end

  depends_on macos: :monterey

  app "Quo.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/ca.illusive.openphone.sfl*",
    "~/Library/Application Support/OpenPhone",
    "~/Library/Preferences/ca.illusive.openphone.plist",
    "~/Library/Saved Application State/ca.illusive.openphone.savedState",
  ]
end
