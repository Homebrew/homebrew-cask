cask 'lyn' do
  version '1.6'
  sha256 '08dc85f2b245c22fab96fa52873a5088084301d08c65b0dec3f2d1e240164198'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          :sha256 => '095046c5cb09f4e73d4de78cd8d3a97c05fa89b95a4f7a65fe954680c7a284c9'
  name 'Lyn'
  homepage 'http://www.lynapp.com/'
  license :commercial

  app 'Lyn.app'
end
