cask "bilimini" do
  version "1.4.5"
  sha256 "56257e4630ae2e7015784539bd9762f737167df7b4e0be43779a7a0ef987b428"

  url "https://github.com/chitosai/bilimini/releases/download/v#{version}/bilimini-#{version}-mac.zip"
  appcast "https://github.com/chitosai/bilimini/releases.atom"
  name "bilimini"
  homepage "https://github.com/chitosai/bilimini"

  auto_updates true

  app "bilimini.app"
end
