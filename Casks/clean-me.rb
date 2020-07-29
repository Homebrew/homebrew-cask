cask 'clean-me' do
  version '1.4.1'
  sha256 'a074546909de68b0b378b58f6804a118f40a03077083a5a61a19c588f0841648'

  url "https://github.com/Kevin-De-Koninck/Clean-Me/releases/download/v#{version}/Clean.Me.app.zip"
  appcast 'https://github.com/Kevin-De-Koninck/Clean-Me/releases.atom'
  name 'Clean-me'
  homepage 'https://github.com/Kevin-De-Koninck/Clean-Me'

  depends_on macos: '>= :sierra'

  app 'Clean Me.app'
end
