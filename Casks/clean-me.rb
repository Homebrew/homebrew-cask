cask 'clean-me' do
  version '1.3.0'
  sha256 '82e5e1230688b749f2b96d5d2146db5f0471eeb89a784c11bbe039aa7917798d'

  url "https://github.com/Kevin-De-Koninck/Clean-Me/releases/download/v#{version}/Clean.Me.app.zip"
  appcast 'https://github.com/Kevin-De-Koninck/Clean-Me/releases.atom'
  name 'Clean-me'
  homepage 'https://github.com/Kevin-De-Koninck/Clean-Me'

  depends_on macos: '>= :sierra'

  app 'Clean Me.app'
end
