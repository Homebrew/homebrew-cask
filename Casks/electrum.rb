cask 'electrum' do
  version '2.5.4'
  sha256 '5ba6df66dd73d9fa61bed7227af2664f89e540766cc035bf011b6761febbcaae'

  url "https://download.electrum.org/#{version}/electrum-#{version}.dmg"
  name 'Electrum'
  homepage 'https://electrum.org/'
  license :gpl
  gpg "#{url}.asc",
      key_id: '6694d8de7be8ee5631bed9502bd5824b7f9470e6'

  app 'Electrum.app'
end
