cask 'chunky' do
  version '1.4.3'
  sha256 '609d67f7a4c269db5725ca37d527615a01b3a386a794dea78d50fba60b833eb0'

  # launchpad.net/chunky was verified as official when first introduced to the cask
  url "https://launchpad.net/chunky/#{version.major_minor}/#{version}/+download/Chunky-#{version}.dmg"
  appcast 'https://github.com/llbit/chunky/releases.atom',
          checkpoint: '51d774038fb55d2a83b201e44c60938c0380387598f91acff3077b148e29fb28'
  name 'Chunky'
  homepage 'https://chunky.llbit.se/'

  app 'Chunky.app'

  caveats do
    depends_on_java
  end
end
