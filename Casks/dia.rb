cask :v1 => 'dia' do
  version '0.97.2-7'
  sha256 '9d3038c01347716800688830eaf52204deb78affe74a5f0c6e0a48fd414d44be'

  url "http://downloads.sourceforge.net/dia-installer/dia/#{version.sub(%r{-.*},'')}/Dia-#{version}.dmg"
  name 'Dia'
  homepage 'http://dia-installer.de/'
  license :oss

  app 'Dia.app'
end
