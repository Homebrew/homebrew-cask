cask "coderunner" do
  version "4.0"
  sha256 "922cea822e4a9fb87348d5fe917fad428b5a7e8c8f1995f061bc6114d232e661"

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
