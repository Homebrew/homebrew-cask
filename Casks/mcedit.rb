cask :v1 => 'mcedit' do
  version '1.4.0.0'
  sha256 'e0a9d777c9974ddd7da8cc38718577bfcadd1cd44ea19a443f3b83f956045bc9'

  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast 'https://github.com/Khroki/MCEdit-Unified/releases.atom'
  name 'MCEdit-Unified'
  homepage 'https://khroki.github.io/MCEdit-Unified/'
  license :mit

  app 'mcedit.app'
end
