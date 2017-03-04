cask 'medis' do
  version '0.5.0'
  sha256 '894dd52129d445176a59fc75d8838417eb90aced4c678cc306ab7e57bef269be'

  # github.com/luin/medis was verified as official when first introduced to the cask
  url "https://github.com/luin/medis/releases/download/v#{version}/medis-v#{version}-mac-x64.zip"
  appcast 'https://github.com/luin/medis/releases.atom',
          checkpoint: '9fcd1fc611d622ea8286d35f8d97a73f34e615a41fb83c54ac5b7d58ff8e83bf'
  name 'Medis'
  homepage 'http://getmedis.com/'

  app 'Medis.app'
end
