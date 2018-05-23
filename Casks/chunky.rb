cask 'chunky' do
  version '1.4.5'
  sha256 'ca55df5c80480b8bc918d0bf97ca38a54adeaec352c60ddae10778c1a15e80f0'

  # launchpad.net/chunky was verified as official when first introduced to the cask
  url "https://launchpad.net/chunky/#{version.major_minor}/#{version}/+download/Chunky-#{version}.dmg"
  appcast 'https://github.com/llbit/chunky/releases.atom',
          checkpoint: '5e546cbd266cc7db6388f21aaad0a9a8035cff552a91763b9ffbfff1b8c2d834'
  name 'Chunky'
  homepage 'https://chunky.llbit.se/'

  app 'Chunky.app'

  caveats do
    depends_on_java
  end
end
