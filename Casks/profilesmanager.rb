cask "profilesmanager" do
  version "2.5"
  sha256 "ddeeb39a9994dfe9c22835ffe7e55446f0027bf7c5d44436267b1196e2557b27"

  url "https://github.com/shaojiankui/ProfilesManager/releases/download/#{version}/ProfilesManager#{version}.zip"
  homepage "https://github.com/shaojiankui/ProfilesManager"
  name "Profilesmanager"
  app "ProfilesManager.app"
end
