cask 'prezi' do
  version '5.2.8'
  sha256 '99add0a7c00546a27c19bf6fb2a408fd0e28ceb5ac00c52e435308eb62e4b72a'

  # akamaihd.net is the official download host per the vendor homepage
  url "https://prezi-a.akamaihd.net/desktop/Prezi#{version}.dmg"
  name 'Prezi'
  homepage 'https://prezi.com/'
  license :gratis

  app 'Prezi.app'
end
