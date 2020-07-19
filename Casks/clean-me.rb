cask 'clean-me' do
  version '1.4.2'
  sha256 'f58124740e8d9cbf8b4f45ee9a3e30a2aced109381fc34583d1c28d49d54dfe5'

  url "https://github.com/Kevin-De-Koninck/Clean-Me/releases/download/v#{version}/Clean.Me.app.zip"
  appcast 'https://github.com/Kevin-De-Koninck/Clean-Me/releases.atom'
  name 'Clean-me'
  homepage 'https://github.com/Kevin-De-Koninck/Clean-Me'

  depends_on macos: '>= :sierra'

  app 'Clean Me.app'
end
