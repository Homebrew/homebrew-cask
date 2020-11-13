cask "keymanager" do
  version "4.4.17"
  sha256 "286e22ee23cc3a739c054cafd786779ba71e7adb0bbb8e213a26515e8b1e2c8e"

  # keymanager.trustasia.com/ was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name "KeyManager"
  homepage "https://keymanager.org/"

  app "KeyManager.app"
end
