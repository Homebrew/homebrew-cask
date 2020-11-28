cask "keymanager" do
  version "4.4.19"
  sha256 "fd41152f8897bfce5e6e95fc74c7aa3044a60266726d7b2dee0896901b02359b"

  # keymanager.trustasia.com/ was verified as official when first introduced to the cask
  url "https://keymanager.trustasia.com/release/KeyManager-#{version}.dmg"
  name "KeyManager"
  homepage "https://keymanager.org/"

  app "KeyManager.app"
end
