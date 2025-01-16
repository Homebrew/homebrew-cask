cask "coderunner" do
  version "4.4.1"
  sha256 "588435c4e46bc0cc7423d3127b0dd8777e04b62cd7563af6fea185d456e1e33b"

  url "https://coderunnerapp.com/download/update/CodeRunner-#{version}.zip"
  name "CodeRunner"
  desc "Multi-language programming editor"
  homepage "https://coderunnerapp.com/"

  livecheck do
    url "https://coderunnerapp.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :catalina"

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
