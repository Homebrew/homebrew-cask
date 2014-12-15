cask :v1 => 'dolphin' do
  version '4.0-4647'
  sha256 'cfd73523a82a811299b4185da755d557a238f0ace9d1cf5a48d04e0d2105fea7'

  url "http://dl.dolphin-emu.org/builds/dolphin-master-#{version}.dmg"
  homepage 'http://www.dolphin-emu.org/'
  license :unknown    # todo: improve this machine-generated value

  app 'Dolphin.app'

  zap :delete => [
                  '~/Library/Application Support/Dolphin',
                  '~/Library/Preferences/org.dolphin-emu.dolphin.plist',
                 ]
end
