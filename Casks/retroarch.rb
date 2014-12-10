cask :v1 => 'retroarch' do
  version '1.0.0.2'

  if MacOS.version <= :snow_leopard
    sha256 'a3ebc3a46d674433a1bf40c1b948021e752919b4b43da853fd73fb508bf40982'
    url "http://www.libretro.com/wp-content/plugins/cip4-folder-download-widget/cip4-download.php?target=wp-content/releases/OSX/RetroArch-OSX10.6-x86-v#{version}.zip"
  else
    sha256 '9d2232663f5dade1b4f648cc0cf0bb605c630b1c6bcbfe5ddce265ddab0d9d2a'
    url "http://www.libretro.com/wp-content/plugins/cip4-folder-download-widget/cip4-download.php?target=wp-content/releases/OSX/RetroArch-OSX10.7-x86_64-v#{version}.zip"
  end

  homepage 'http://www.libretro.com/'

  app 'RetroArch.app'
end
