cask :v1 => 'pixlr' do
  version '1.0.1_26'
  sha256 'a68fb58bd8f10eaa31bafcdee1c6004fcae12f750830cf8a7b7399bf23ba8087'

  url "https://cdn2.pixlr.com/mac/Autodesk_Pixlr_ver#{version}_Mac_Installer.dmg"
  homepage 'https://pixlr.com'
  license :unknown

  app 'Pixlr.app'
end
