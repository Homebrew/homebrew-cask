cask "focused" do
  version "3.6,1853"
  sha256 "88000db9b6d1304c9968d08ad4bd3ccd6125e2ca53ed3b2a718782368d2fa688"

  url "https://dl.devant.io/v1/ffbdbfd0-ecfc-11e9-9897-1b1ad6ec37c4/#{version.csv.second}/Focused.zip",
      verified: "dl.devant.io/v1/"
  name "Focused"
  desc "Markdown writing app"
  homepage "https://www.71squared.com/focused"

  livecheck do
    url "https://www.71squared.com/updates/focused"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: ">= :high_sierra"

  app "Focused.app"

  zap trash: [
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.71squared.focused.sfl*",
    "~/Library/Containers/com.71squared.focused",
  ]
end
