cask "dissenter-browser" do
  version "0.70.122,5d3f93a29dd49a5b1d9fc27f:5dbd49e3fa229c690746a809"
  sha256 "40e2d60a090eee0500debab488323d25b27c24e09c8d0353325678f3f5f59768"

  # apps.gab.com/ was verified as official when first introduced to the cask
  url "https://apps.gab.com/application/#{version.after_comma.before_colon}/resource/#{version.after_colon}/content"
  appcast "https://dissenter.com/"
  name "Dissenter"
  homepage "https://dissenter.com/"

  auto_updates true

  app "Dissenter Browser.app"
end
