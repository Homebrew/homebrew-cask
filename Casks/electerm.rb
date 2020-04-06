cask 'electerm' do
  version '1.3.15'
  sha256 'cd84821e9334094a136dd1c3b619eb570eb95f96f618a2cf4506f826e31f3ec0'

  url "https://github.com/electerm/electerm/releases/download/v#{version}/electerm-#{version}-mac.dmg"
  appcast 'https://github.com/electerm/electerm/releases.atom'
  name 'electerm'
  homepage 'https://github.com/electerm/electerm/'

  app 'electerm.app'
end
