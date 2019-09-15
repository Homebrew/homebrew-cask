cask 'qtpass' do
  version '1.3.0'
  sha256 'b6f615b5e36233842d384dc876babbe5817a00b15c70e1a0e8d8ba16b843846b'

  # github.com/IJHack/qtpass was verified as official when first introduced to the cask
  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom'
  name 'QtPass'
  homepage 'https://qtpass.org/'

  depends_on macos: '>= :sierra'

  app 'QtPass.app'
end
