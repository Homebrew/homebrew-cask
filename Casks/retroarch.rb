cask :v1 => 'retroarch' do
  version '1.0.0.2'

  if MacOS.release <= :snow_leopard
    sha256 '9d2232663f5dade1b4f648cc0cf0bb605c630b1c6bcbfe5ddce265ddab0d9d2a'
    url "http://buildbot.libretro.com/stable/osx-x86_64/RetroArch-OSX10.7-x86_64-v#{version}.zip"
  else
    sha256 '9d2232663f5dade1b4f648cc0cf0bb605c630b1c6bcbfe5ddce265ddab0d9d2a'
    url "http://buildbot.libretro.com/stable/osx-x86_64/RetroArch-OSX10.7-x86_64-v#{version}.zip"
  end

  name 'RetroArch'
  homepage 'http://www.libretro.com/'
  license :unknown # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'RetroArch.app'
end
