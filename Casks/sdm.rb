cask "sdm" do
  version "15.27.0"
  sha256 :no_check

  url "https://app.strongdm.com/downloads/client/darwin"
  name "sdm"
  desc "Strongdm client"
  homepage "https://www.strongdm.com/docs/user-guide/client-installation/mac-installation"

  app "SDM.app"
end
