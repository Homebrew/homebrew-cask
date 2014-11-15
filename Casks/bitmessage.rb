cask :v1 => 'bitmessage' do
  version '0.4.2'
  sha256 'aa109705406d9ab86761d03e2cb6387a5a05a51d7a68747f6284ba32ef2aa445'

  url "https://bitmessage.org/download/osx/Archive/bitmessage-v#{version}.dmg"
  homepage 'https://bitmessage.org/'
  license :mit

  app 'Bitmessage.app'
end
