cask 'medis' do
  version '0.5.0'
  sha256 '894dd52129d445176a59fc75d8838417eb90aced4c678cc306ab7e57bef269be'

  # github.com/luin/medis was verified as official when first introduced to the cask
  url "https://github.com/luin/medis/releases/download/v#{version}/medis-v#{version}-mac-x64.zip"
  appcast 'https://github.com/luin/medis/releases.atom',
          checkpoint: 'd1ccf2022d97fa7acb70b8b9661489a02c412b3e93cbcf92c28ff62b83081d83'
  name 'Medis'
  homepage 'http://getmedis.com/'

  app 'Medis.app'
end
