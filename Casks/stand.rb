cask "stand" do
  version "2.0"
  sha256 "eb0555f6376757105e1faea1fd1f9e4afae21eef73fdd5c7d0fb0c76a8cd9702"

  # f001.backblazeb2.com/file/stand-app/ was verified as official when first introduced to the cask
  url "https://f001.backblazeb2.com/file/stand-app/#{version}/Stand.zip"
  appcast "https://standapp-sparkle-updater.herokuapp.com/"
  name "Stand"
  homepage "https://getstandapp.com/"

  depends_on macos: ">= :catalina"

  app "Stand.app"
end
