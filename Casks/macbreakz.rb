cask 'macbreakz' do
  version '5.26'
  sha256 'b161268d63709efb9e894572ac3945520e2a12fdd76b195adf930d8f4f807266'

  url "http://www.publicspace.net/download/MacBreakZ#{version.major}.dmg"
  appcast "http://www.publicspace.net/app/signed_mb#{version.major}.xml",
          checkpoint: 'cbafe290b4ce6b94e04e744396d729b2b3453e69daee0fa536387858321da2c0'
  name 'MacBreakZ'
  homepage 'http://www.publicspace.net/MacBreakZ/'
  license :commercial

  app "MacBreakZ #{version.major}.app"
end
