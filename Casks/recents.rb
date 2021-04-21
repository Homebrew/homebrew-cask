cask "recents" do
  version "2.2.1,6244"
  sha256 :no_check

  url "https://recentsapp.com/releases/Recents_latest.zip"
  appcast "https://api.appcenter.ms/v0.1/public/sparkle/apps/74f5ee9e-bf2d-4be3-b92a-3e8766433b8b"
  name "Recents"
  homepage "https://recentsapp.com/"

  depends_on macos: ">= :high_sierra"

  app "Recents.app"
end
