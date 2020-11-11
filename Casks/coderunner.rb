cask "coderunner" do
  version "4.0.1"
  sha256 "be5585bddf7b027427a31e09694a20161debf98180e7afc80afbaf361b0f546c"

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
