cask "console" do
  version "0.3.0"
  sha256 "8cf565a7ec7bdb0a8f4e4fa9bf94b2893253e1012040b5ec57212c87b0d09eb8"

  url "https://github.com/macmade/Console/releases/download/#{version}/Console.app.zip"
  appcast "https://github.com/macmade/Console/releases.atom"
  name "Console"
  homepage "https://github.com/macmade/Console"

  depends_on macos: ">= :el_capitan"

  app "Console.app"
end
