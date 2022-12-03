cask "coderunner" do
  version "4.2,66556"
  sha256 "08a72597a8bdda776ba7a789a4e8e16f39824523b7c35ecda5bcc3efac776197"

  url "https://coderunnerapp.com/download/update/CodeRunner-#{version.csv.first}.zip"
  name "CodeRunner"
  desc "Multi-language programming editor"
  homepage "https://coderunnerapp.com/"

  livecheck do
    url "https://coderunnerapp.com/appcast.xml"
    strategy :sparkle
  end

  auto_updates true

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
