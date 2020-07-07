cask 'nocturnal-screen' do
  version '1.1.1'
  sha256 '5bc5c7c6231a4cc4c316335dfca57c0cc8964410e6b8898ae09120bbc8d98779'

  url "https://github.com/joshjon/nocturnal/releases/download/v#{version}/Nocturnal-#{version}.zip"
  appcast 'https://github.com/joshjon/nocturnal/releases.atom'
  name 'Nocturnal Screen'
  homepage 'https://github.com/joshjon/nocturnal'

  app 'Nocturnal.app'
end
