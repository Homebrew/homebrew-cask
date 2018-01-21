cask 'espresso' do
  version '5.1'
  sha256 '8d1586779fc9741fc51a74b04f3a2ad2ba480a8acf5a1be1597eebaaafb004c2'

  url "https://presto.espressoapp.com/downloads/Espresso%20v#{version}.zip"
  appcast "https://update.macrabbit.com/espresso/#{version}.xml",
          checkpoint: 'cd28f6bdd375fef744323ccc861d6a5fc719af8fad52b966559bf628030b022b'
  name 'Espresso'
  homepage 'https://espressoapp.com/'

  depends_on macos: '>= :sierra'

  app 'Espresso.app'
end
