cask 'mcedit' do
  version '1.4.0.1'
  sha256 'e09c7efab389cdb8dfe4bcc74fd452aa9681cc7fb1d98756c922fbe28fd82122'

  url "https://github.com/Khroki/MCEdit-Unified/releases/download/#{version}/MCEdit.v#{version}.OSX.64bit.zip"
  appcast 'https://github.com/Khroki/MCEdit-Unified/releases.atom',
          :sha256 => '221495e8528df7b805ee8ac5252df7ddda132e5758356e5b7f62610f9e174274'
  name 'MCEdit-Unified'
  homepage 'https://khroki.github.io/MCEdit-Unified/'
  license :mit

  app 'mcedit.app'
end
