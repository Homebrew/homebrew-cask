cask :v1 => 'qvod-player' do
  version '1.1.26'
  sha256 'e824084e6a0539be3f30da795938b45c0f88bdb49794f61615a5753aedd92c4e'

  url "http://dl.kuaibo.com/mac/QvodPlayer_v#{version}.dmg"
  homepage 'http://www.qvodcd.com/'
  license :unknown    # todo: improve this machine-generated value

  pkg '双击安装快播.pkg'

  uninstall :pkgutil => 'com.kuaibo.pkg.QvodPlayer'
end
