cask 'affinity-designer' do
  version '1.8.2'
  sha256 'bc9076159db2cb4f17e7239ec43157574a574c670b484ff07835a61732f4b23d'

  # s3-eu-west-1.amazonaws.com was verified as official when first introduced to the cask
  url "https://s3-eu-west-1.amazonaws.com/affinity-update/mac/retail/Affinity%20Designer-#{version}.app.zip"
  appcast 'https://s3-eu-west-1.amazonaws.com/affinity-update/mac/retail/designer.xml'
  name 'Affinity Designer'
  homepage 'https://affinity.serif.com/en-us/designer/'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Affinity Designer.app'
end
