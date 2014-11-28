cask :v1 => 'cord' do
  version '0.5.7'
  sha256 '8f505b12b94167100b3b8b44ed3cee32ffcc94b73dc44fe0ecc896151f114100'

  url "https://downloads.sourceforge.net/sourceforge/cord/CoRD_#{version}.zip"
  appcast 'http://cord.sourceforge.net/sparkle.xml',
          :sha256 => '891e1675b678f03d7f050ecb426c28362dab3c92da1592fce8a36afcb7606b69'
  homepage 'http://cord.sourceforge.net/'
  license :oss

  app 'CoRD.app'

  zap :delete => '~/Library/Application Support/CoRD'
end
