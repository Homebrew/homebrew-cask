cask :v1 => 'svnx' do
  version '1.3.4'
  sha256 'b687a0bc62de9f21b4c34dd94dbcfd282fd38184764e05e03e59dd5a19d1a3e8'

  url "https://svnx.googlecode.com/files/svnX%20#{version}.dmg"
  homepage 'https://code.google.com/p/svnx/'
  license :oss

  app 'svnX.app'
end
