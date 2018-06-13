cask 'gzdoom' do
  version '3.4.0'
  sha256 '8cba4fe3fee0c27d6bcc2ccdb506acb7a1b0c3b5d5789889ad2a92ba35a49759'

  url "https://zdoom.org/files/gzdoom/bin/gzdoom-bin-#{version.dots_to_hyphens}.dmg"
  appcast 'https://github.com/coelckers/gzdoom/releases.atom'
  name 'gzdoom'
  homepage 'https://zdoom.org/index'

  app 'GZDoom.app'
end
