cask :v1 => 'mendeley-desktop' do
  version '1.13.4'
  sha256 'd448940d34b09dd332063a065364f7c85500ffa690f81e08bdc9ae01a899792a'

  url "http://desktop-download.mendeley.com/download/Mendeley-Desktop-#{version}-OSX-Universal.dmg"
  name 'Mendeley'
  homepage 'http://www.mendeley.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Mendeley Desktop.app'
end
