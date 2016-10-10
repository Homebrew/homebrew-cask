cask 'chunky' do
  version '1.3.8'
  sha256 '414d3c3af07c1f5b7c96d2130c66eb92bb7e55f035021aea6f0cb640e52fe9a1'

  # launchpad.net/chunky was verified as official when first introduced to the cask
  url "https://launchpad.net/chunky/#{version.major_minor}/#{version}/+download/Chunky-#{version}.dmg"
  appcast 'https://github.com/llbit/chunky/releases.atom',
          checkpoint: '1c79f54c04c544ffe940e095ca89b2f6d1ba5e25389f7ef0a5a0148a75c75d45'
  name 'Chunky'
  homepage 'http://chunky.llbit.se/'

  app 'Chunky.app'

  caveats do
    depends_on_java
  end
end
