cask :v1 => 'komanda' do
  version '1.0.0 beta'
  sha256 'e54f195185d92b0b4a9e9be3b1db4b2cbd99723c93e9b6e57feb0df90b27a5d1'

  url "https://github.com/mephux/komanda/releases/download/#{version.gsub(' ','.')}/Komanda-macosx.zip"
  homepage 'https://github.com/mephux/komanda'
  license :mit

  app 'Komanda.app'
end
