cask :v1 => 'mcedit' do
  version '1.4.0.1'
  sha256 'e09c7efab389cdb8dfe4bcc74fd452aa9681cc7fb1d98756c922fbe28fd82122'

  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast 'https://github.com/Khroki/MCEdit-Unified/releases.atom'
  name 'MCEdit-Unified'
  homepage 'https://khroki.github.io/MCEdit-Unified/'
  license :mit

  app 'mcedit.app'
end
