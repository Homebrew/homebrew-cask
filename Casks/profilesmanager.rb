cask "profilesmanager" do
  version "2.6"
  sha256 "ea107dd855e7ec4a08a5aa07d7c035a7ac36b5671ed2fef582aaadd54ac72c4b"

  url "https://github.com/shaojiankui/ProfilesManager/releases/download/#{version}/ProfilesManager#{version}.zip"
  homepage "https://github.com/shaojiankui/ProfilesManager"
  name "Profilesmanager"
  app "ProfilesManager.app"
end
