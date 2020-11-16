cask "coderunner" do
  version "4.0.2"
  sha256 "4712b5520bc9b8f9304f1bf7db5ea3ff1c31589ca842ed17e9c95c15c6174851"

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
