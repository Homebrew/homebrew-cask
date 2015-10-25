cask :v1 => 'lyn' do
  version '1.6'
  sha256 '08dc85f2b245c22fab96fa52873a5088084301d08c65b0dec3f2d1e240164198'

  url "http://www.lynapp.com/downloads/Lyn-#{version}.dmg"
  appcast 'http://www.lynapp.com/lyn/update.xml',
          :sha256 => 'b5581cd5b653f9d18c19fa6b5f83e9e1c2c69497f5e54650fa3897c914d1e762'
  name 'Lyn'
  homepage 'http://www.lynapp.com/'
  license :commercial

  app 'Lyn.app'
end
