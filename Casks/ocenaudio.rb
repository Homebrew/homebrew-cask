cask 'ocenaudio' do
  version '3.7.9'

  if MacOS.version <= :high_sierra
    sha256 '286df233ed4d9a6f5f60d3d33bf80732683f6c3990596a1100491f6cdeb2bac5'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_sierra.dmg'
  else
    sha256 '28f8c2d249f41d8b1e4281fd5880cad7dce9246cd86e7cf6b4e21f2c89160457'

    url 'https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  end
  appcast 'https://macupdater.net/cgi-bin/check_urls/check_url_filename.cgi?url=https://www.ocenaudio.com/downloads/index.php/ocenaudio_mojave.dmg'
  name 'ocenaudio'
  homepage 'https://www.ocenaudio.com/en'

  depends_on macos: '>= :sierra'

  app 'ocenaudio.app'
end
