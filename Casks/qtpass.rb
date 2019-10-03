cask 'qtpass' do
  version '1.3.1'
  sha256 '7408e237191bf9291d4252f9f8e26b29d7607aaccb0a94b149ae3d70a27782f4'

  # github.com/IJHack/qtpass was verified as official when first introduced to the cask
  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom'
  name 'QtPass'
  homepage 'https://qtpass.org/'

  depends_on macos: '>= :sierra'

  app 'QtPass.app'
end
