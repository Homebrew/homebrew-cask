cask :v1 => 'mendeley-desktop' do
  version '1.13.8'
  sha256 'f90b5fec479b8dcb7bbf9d3dc6c4afa6a11d10636097653a28687c5f2415362a'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'https://www.mendeley.com/'
  license :gratis

  app 'Mendeley Desktop.app'
end
