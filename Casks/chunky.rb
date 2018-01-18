cask 'chunky' do
  version '1.4.4'
  sha256 'ee33189de545b7fdfeb92293cdf68e77d4d0ed43fe3ce998bc60d12088ced9e9'

  # launchpad.net/chunky was verified as official when first introduced to the cask
  url "https://launchpad.net/chunky/#{version.major_minor}/#{version}/+download/Chunky-#{version}.dmg"
  appcast 'https://github.com/llbit/chunky/releases.atom',
          checkpoint: '90a1c0b5e536fa14a3a7109869fe382c120db3328348353b75d77168378aec1b'
  name 'Chunky'
  homepage 'https://chunky.llbit.se/'

  app 'Chunky.app'

  caveats do
    depends_on_java
  end
end
