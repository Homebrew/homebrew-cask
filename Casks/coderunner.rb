cask "coderunner" do
  version "3.1"
  sha256 "c85ee95a52af5986a0279a8191feff3f0c7d9f86b0f8030779b48b6a33541bee"

  url "https://coderunnerapp.com/download/update/CodeRunner-#{version}.zip"
  appcast "https://coderunnerapp.com/appcast.xml"
  name "CodeRunner"
  desc "Multi-language programming editor"
  homepage "https://coderunnerapp.com/"

  app "CodeRunner.app"

  zap trash: [
    "~/Library/Application Support/CodeRunner",
    "~/Library/Caches/com.krill.CodeRunner",
    "~/Library/Saved Application State/com.krill.CodeRunner.savedState",
  ]
end
