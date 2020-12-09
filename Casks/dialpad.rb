cask "dialpad" do
  version "18.78.6"
  sha256 "1b205ee99052ef43cf047ec6aced7e183d9f10803872753a6e31e0a27b319576"

  # storage.googleapis.com/dialpad_native/osx/ was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/dialpad_native/osx/Dialpad.dmg"
  name "Dialpad"
  homepage "https://dialpad.com/download"

  app "Dialpad.app"
end
