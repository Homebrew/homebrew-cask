class Retroarch < Cask
  version '1.0.0.2'

  if MacOS.version < :lion
    sha256 'a3ebc3a46d674433a1bf40c1b948021e752919b4b43da853fd73fb508bf40982'
    url "http://www.libretro.com/wp-content/plugins/cip4-folder-download-widget/cip4-download.php?target=wp-content/releases/OSX/RetroArch-OSX10.6-x86-v#{version}.zip"
  else
    sha256 '8a528e6b954d614e86c5a3cfa8608008f60b593ef9a5bb12be3a834ebac9177a'
    url "http://www.libretro.com/wp-content/plugins/cip4-folder-download-widget/cip4-download.php?target=wp-content/releases/OSX/RetroArch-OSX10.7-x86_64-v#{version}.zip"
  end
  homepage 'http://www.libretro.com/'

  app 'RetroArch.app'
end
