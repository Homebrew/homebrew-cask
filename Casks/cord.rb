class Cord < Cask
  version '0.5.7'
  sha256 '8f505b12b94167100b3b8b44ed3cee32ffcc94b73dc44fe0ecc896151f114100'

  url "https://downloads.sourceforge.net/sourceforge/cord/CoRD_#{version}.zip"
  appcast 'http://cord.sourceforge.net/sparkle.xml'
  homepage 'http://cord.sourceforge.net/'
  license :oss

  app 'CoRD.app'
  zap :delete => '~/Library/Application Support/CoRD'
end
