cask :v1 => 'cord' do
  version '0.5.7'
  sha256 '8f505b12b94167100b3b8b44ed3cee32ffcc94b73dc44fe0ecc896151f114100'

  url "http://downloads.sourceforge.net/sourceforge/cord/CoRD_#{version}.zip"
  appcast 'http://cord.sourceforge.net/sparkle.xml',
          :sha256 => 'aef1255be65ccd044bf03edcd5eec7bebe07b1a4f6dcbed715fa1112a384b09a'
  name 'CoRD'
  homepage 'http://cord.sourceforge.net/'
  license :gpl

  app 'CoRD.app'

  zap :delete => '~/Library/Application Support/CoRD'
end
