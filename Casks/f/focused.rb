cask "focused" do
  version "3.7.2,1880"
  sha256 "8a78f2fd01ddf9fc17ae6ac42dcb6eb42a00945a9e96d31473d5c6e1d8a62c5f"

  url "https://dl.devant.io/v1/ffbdbfd0-ecfc-11e9-9897-1b1ad6ec37c4/#{version.csv.second}/Focused.zip"
  name "Focused"
  desc "Markdown writing app"
  homepage "https://www.71squared.com/focused"

  livecheck do
    url "https://www.71squared.com/updates/focused"
    strategy :sparkle
  end

  auto_updates true
  depends_on macos: :sonoma

  app "Focused.app"

  uninstall quit: "com.71squared.focused"

  zap trash: [
    "~/Library/Application Scripts/com.71squared.focused",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.71squared.focused.sfl*",
    "~/Library/Containers/com.71squared.focused",
  ]
end
