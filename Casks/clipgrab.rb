cask 'clipgrab' do
  version '3.8.8'
  sha256 'c8f19a62ec1c8e7f52dc6406dc9444cd2f1752438850f2e77842af059a63f7b2'

  url "https://download.clipgrab.org/ClipGrab-#{version}.dmg"
  appcast 'https://clipgrab.org/'
  name 'ClipGrab'
  homepage 'https://clipgrab.org/'

  depends_on macos: '>= :sierra'

  app 'ClipGrab.app'

  zap trash: '~/Library/Preferences/de.clipgrab.ClipGrab.plist'
end
