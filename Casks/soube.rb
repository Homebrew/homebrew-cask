cask 'soube' do
  version '1.4.2'
  sha256 'c09df1e3a512677468bb49aa1a72306110ecd57fb85a29a0897fba5ba3b940a5'

  url "https://github.com/DracotMolver/Soube/releases/download/#{version}/soube-#{version}.dmg"
  appcast 'https://github.com/DracotMolver/Soube/releases.atom'
  name 'Soube'
  homepage 'https://github.com/DracotMolver/Soube'

  app 'soube.app'
end
