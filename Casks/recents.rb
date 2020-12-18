cask "recents" do
  version "2.0.3,4867"
  sha256 :no_check

  url "https://recentsapp.com/releases/Recents_latest.zip"
  name "Recents"
  homepage "https://recentsapp.com/"

  depends_on macos: ">= :high_sierra"

  app "Recents.app"
end
