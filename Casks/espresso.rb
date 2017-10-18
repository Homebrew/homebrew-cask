cask 'espresso' do
  version '5.0.4'
  sha256 '336312d0a8940a553018eef1d019f47b4673ca8c2419ab47e839812917f5f538'

  url "https://presto.espressoapp.com/downloads/Espresso%20v#{version}.zip"
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          checkpoint: '19fce25d2f4bad0db881c5c48d99f42ea2176618ef9e4cd47aa892a6d52b49ec'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
