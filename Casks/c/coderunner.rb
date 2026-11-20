cask "coderunner" do
  version "4.6"
  sha256 "2a4ff87a8811dc6d67979495d1d2a7380a5f7cd477ce2856ad594629e2ae5be4"

  url "https://coderunnerapp.com/download/update/CodeRunner-#{version}.zip"
  name "CodeRunner"
  desc "Multi-language programming editor"
  homepage "https://coderunnerapp.com/"

  livecheck do
    url "https://coderunnerapp.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: :monterey

  app "CodeRunner.app"

  zap trash: [
    "~/Library/Application Scripts/com.krill.CodeRunner.CodeRunnerThumbs",
    "~/Library/Application Support/CodeRunner",
    "~/Library/Application Support/com.apple.sharedfilelist/com.apple.LSSharedFileList.ApplicationRecentDocuments/com.krill.coderunner.sfl*",
    "~/Library/Autosave Information/com.krill.CodeRunner.plist",
    "~/Library/Caches/com.krill.CodeRunner",
    "~/Library/Containers/com.krill.CodeRunner.CodeRunnerThumbs",
    "~/Library/HTTPStorages/com.krill.CodeRunner",
    "~/Library/Preferences/com.krill.CodeRunner.plist",
    "~/Library/Saved Application State/com.krill.CodeRunner.savedState",
  ]
end
