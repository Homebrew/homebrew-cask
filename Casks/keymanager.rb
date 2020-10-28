cask "keymanager" do
  version "4.4.15"
  sha256 "c45686f36e876e72cd4c466d5f9513c838bd9f894ed9633e67669d132421815f"

  # keymanager.trustasia.com/ was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name "KeyManager"
  homepage "https://keymanager.org/"

  app "KeyManager.app"
end
