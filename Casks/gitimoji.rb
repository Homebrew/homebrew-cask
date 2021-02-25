cask "gitimoji" do
  version "1.1.0"
  sha256 "f5c8b1d924a84701566e223e68ec4d6f318fc76a92e506ab281ccccc6fd004c2"

  url "https://github.com/lovetodream/gitimoji/releases/download/v#{version}/gitimoji.app.zip"
  appcast "https://github.com/lovetodream/gitimoji/releases"
  name "gitimoji"
  desc "Gitmoji on your Mac"
  homepage "https://timozacherl.com/apps/#/gitimoji"

  auto_updates false
  depends_on macos: ">= :high_sierra"

  app "gitimoji.app"
end
