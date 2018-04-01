cask 'soube' do
  version '1.4.2'
  sha256 'c09df1e3a512677468bb49aa1a72306110ecd57fb85a29a0897fba5ba3b940a5'

  # github.com/DracotMolver/Soube was verified as official when first introduced to the cask
  url "https://github.com/DracotMolver/Soube/releases/download/#{version}/soube-#{version}.dmg"
  appcast 'https://github.com/DracotMolver/Soube/releases.atom',
          checkpoint: 'ea1de0a98840d99303b89f8dc27d579ecfa21b315234c13c4f505baef4c97b7e'
  name 'Soube'
  homepage 'http://soube.diegomolina.cl/'

  app 'soube.app'
end
