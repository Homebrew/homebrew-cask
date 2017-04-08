cask 'bootxchanger' do
  version '2.0'
  sha256 'cfb05680ab6a7d0b1793a33135dd15562a7b5fd59bb1ebf3ad6067c2c9fad6c1'

  # github.com/zydeco/bootxchanger was verified as official when first introduced to the cask
  url "https://github.com/zydeco/bootxchanger/releases/download/v#{version}/bootxchanger_#{version}.dmg"
  appcast 'https://github.com/zydeco/bootxchanger/releases.atom',
          checkpoint: 'b257f8f3f178a084c67277024c1d91c8a72bbeb11872176a007378150a7c15c9'
  name 'BootXChanger'
  homepage 'https://namedfork.net/bootxchanger/'

  app 'BootXChanger.app'
end
