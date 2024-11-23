cask "coderunner" do
  version "4.4"
  sha256 "cf3f3f034337d25e5327602dfd5f6b3c7f8560371ae9f9ba86165caea436f66a"

  url "https://coderunnerapp.com/download/update/CodeRunner-#{version}.zip"
  name "CodeRunner"
  desc "Multi-language programming editor"
  homepage "https://coderunnerapp.com/"

  livecheck do
    url "https://coderunnerapp.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sierra"

  app "CodeRunner.app"

  zap trash: [
    "~/Library/Application Scripts/com.krill.CodeRunner.CodeRunnerThumbs/",
    "~/Library/Application Support/CodeRunner",
    "~/Library/Autosave Information/com.krill.CodeRunner.plist",
    "~/Library/Caches/com.krill.CodeRunner",
    "~/Library/Containers/com.krill.CodeRunner.CodeRunnerThumbs",
    "~/Library/HTTPStorages/com.krill.CodeRunner",
    "~/Library/Preferences/com.krill.CodeRunner.plist",
    "~/Library/Saved Application State/com.krill.CodeRunner.savedState",
  ]
end
