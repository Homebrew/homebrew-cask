cask "lunasea" do
  version "6.0.0"
  sha256 :no_check

  url "https://github.com/CometTools/LunaSea/releases/download/6.0.0%2B60000006/LunaSea-macOS-60000006.zip"
  name "LunaSea"
  desc "Is a fully featured, open source self-hosted controller"
  homepage "https://github.com/CometTools/LunaSea"

  app "LunaSea.app"
end
