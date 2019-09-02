cask 'qlc-plus' do
  version '4.12.2'
  sha256 'fe43befe918da4ebfdd503d1f7852fed3dbd9f4a30a1711f9962051d6ebdb681'

  url "https://qlcplus.org/downloads/#{version}/QLC+_#{version}.dmg"
  appcast 'https://github.com/mcallegari/qlcplus/releases.atom'
  name 'Q Light Controller+'
  homepage 'https://qlcplus.org/'

  app 'QLC+.app'
end
