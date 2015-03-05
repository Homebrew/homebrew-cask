cask :v1 => 'qvod-player' do
  version '1.1.26'
  sha256 '6a52cf7e297f8976e3b3c8ce954a4c77ac1c99c7bd89ad3ba5b31938c8df6ad4'

  url "http://dl.kuaibo.com/mac/QvodPlayer_v#{version}.dmg"
  homepage 'http://www.kuaibo.com/download.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  pkg '双击安装快播.pkg'

  uninstall :pkgutil => 'com.kuaibo.pkg.QvodPlayer'
end
