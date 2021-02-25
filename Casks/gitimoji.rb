cask "gitimoji" do
  version "1.1.0"
  sha256 "f5c8b1d924a84701566e223e68ec4d6f318fc76a92e506ab281ccccc6fd004c2"

  url "https://github.com/lovetodream/gitimoji/releases/download/v#{version}/gitimoji.app.zip",
      verified: "https://github.com/lovetodream/gitimoji/"
  name "gitimoji"
  desc "Gitmoji on your computer"
  homepage "https://timozacherl.com/apps/#/gitimoji"

  auto_updates false

  app "gitimoji.app"
end
