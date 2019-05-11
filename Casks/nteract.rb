cask 'nteract' do
  version '0.14.2'
  sha256 'c7089e7b85e5afb53624345bfd4622fb8fe466f5cd30498a57023d78736014ba'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  auto_updates true

  app 'nteract.app'
end
