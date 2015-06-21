cask :v1 => 'asepsis' do
  version '1.5.1'
  sha256 '3bf6c1bd9c2a4bb81d05c8142595e552681e45ee44abd96994168a7001f46807'

  url "http://downloads.binaryage.com/Asepsis-#{version}.dmg"
  name 'Asepsis'
  homepage 'http://asepsis.binaryage.com/'
  license :bsd

  pkg 'Asepsis.pkg'

  uninstall :pkgutil => 'com.binaryage.pkg.asepsis'

  depends_on :macos => '<= :yosemite'
end
