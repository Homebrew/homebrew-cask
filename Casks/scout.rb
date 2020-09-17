cask "scout" do
  version "2.18.16"
  sha256 "b9d38e1f80c12f93f806360ee0dea096a5e262b1436a9e2664ca52a2f7955658"

  # github.com/scout-app/scout-app/ was verified as official when first introduced to the cask
  url "https://github.com/scout-app/scout-app/releases/download/v#{version}/OSX_Scout-App_#{version}.zip"
  appcast "https://github.com/scout-app/scout-app/releases.atom"
  name "Scout-App"
  desc "Simple Sass processor"
  homepage "https://scout-app.io/"

  app "Scout-App.app"
end
