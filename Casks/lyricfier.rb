cask 'lyricfier' do
  version '0.2.7'
  sha256 'd4ce69cba9cabe61880f0b241323f6a05cddb1f7a2f91b76846af42ec87b9031'

  url "https://github.com/emilioastarita/lyricfier/releases/download/v#{version}/lyricfier-mac-x64.zip"
  appcast 'https://github.com/emilioastarita/lyricfier/releases.atom'
  name 'Lyricfier'
  homepage 'https://github.com/emilioastarita/lyricfier'

  app 'lyricfier.app'
end
