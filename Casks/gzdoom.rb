cask 'gzdoom' do
  version '4.1.2'
  sha256 'd0cd2fd4e83be135301229b2e748c7d168670d519aafb66f8fa6b6547a313392'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
