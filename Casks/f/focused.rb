cask "focused" do
  version "3.7.1,1876"
  sha256 "2dd5e7bacfec693082962e304b9467308c50b5e454ee6471d06f02858565cf3c"

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
