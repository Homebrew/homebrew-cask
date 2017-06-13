cask 'chunky' do
  version '1.4.2'
  sha256 'b35eec9fd6247555e5ab0d97f5644fee38215483f6370bc6860e43af523903c5'

  # launchpad.net/chunky was verified as official when first introduced to the cask
  url "https://launchpad.net/chunky/#{version.major_minor}/#{version}/+download/Chunky-#{version}.dmg"
  appcast 'https://github.com/llbit/chunky/releases.atom',
          checkpoint: '6699de9c9d8b5be1f6a53fd042b514dc496a1274f9731538c5042bac0981ccbb'
  name 'Chunky'
  homepage 'https://chunky.llbit.se/'

  app 'Chunky.app'

  caveats do
    depends_on_java
  end
end
