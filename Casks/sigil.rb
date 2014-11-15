cask :v1 => 'sigil' do
  version '0.8.0'
  sha256 'cafe9a942f787d4588445bf9fc5cbbd62531724e955cb7eec2f714a745fa82b3'

  url "https://github.com/user-none/Sigil/releases/download/#{version}/Sigil-#{version}-Mac-Package.dmg"
  homepage 'http://code.google.com/p/sigil/'
  license :oss

  app 'Sigil.app'
end
