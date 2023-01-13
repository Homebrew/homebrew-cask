cask "coderunner" do
  version "4.2.1,66631"
  sha256 "e8339db2a0552d4d685424134a29fce878f3a1c52d13edcf4af3e824146510c5"

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
