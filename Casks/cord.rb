cask 'cord' do
  version '0.5.7'
  sha256 '8f505b12b94167100b3b8b44ed3cee32ffcc94b73dc44fe0ecc896151f114100'

  url "http://downloads.sourceforge.net/sourceforge/cord/CoRD_#{version}.zip"
  appcast 'http://cord.sourceforge.net/sparkle.xml',
          :sha256 => '31bfe1d1f438e3a77bcc5d63cf4f78cda524927901902de3b1428e15e2427f00'
  name 'CoRD'
  homepage 'http://cord.sourceforge.net/'
  license :gpl

  app 'CoRD.app'

  zap :delete => '~/Library/Application Support/CoRD'
end
