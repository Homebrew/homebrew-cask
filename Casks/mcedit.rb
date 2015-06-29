cask :v1 => 'mcedit' do
  version '1.3.2.0'
  sha256 '97095224d8b23247311e50f5c048f8fedad2b0063c5c713c3db92d4e9d8efdce'

  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast 'https://github.com/Khroki/MCEdit-Unified/releases.atom'
  name 'MCEdit-Unified'
  homepage 'https://khroki.github.io/MCEdit-Unified/'
  license :mit

  app 'mcedit.app'
end
