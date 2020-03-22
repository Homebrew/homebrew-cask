cask "Profilesmanager" do
  version "2.5"
  sha256 no_check

  url "https://github.com/shaojiankui/ProfilesManager/releases/download/#{version}/ProfilesManager#{version}.zip"
  homepage "https://github.com/shaojiankui/ProfilesManager"
  name "Profilesmanager"
  app "ProfilesManager.app"
end
