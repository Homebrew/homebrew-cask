cask :v1 => 'mcedit' do
  version '1.3.3.0'
  sha256 '7cb746127b5d0a9f4d40bb2724ad14767df5d8d3f120781efe03a74d99c56897'

  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast 'https://github.com/Khroki/MCEdit-Unified/releases.atom'
  name 'MCEdit-Unified'
  homepage 'https://khroki.github.io/MCEdit-Unified/'
  license :mit

  app 'mcedit.app'
end
