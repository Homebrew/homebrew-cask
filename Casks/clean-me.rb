cask 'clean-me' do
  version '1.2.0'
  sha256 '9a80b8b30571dc76dd3d082108bbd724a475a1f66d6e02e6c26a194b303c9d2f'

  url "https://github.com/Kevin-De-Koninck/Clean-Me/releases/download/v#{version}/Clean.Me.app.zip"
  appcast 'https://github.com/Kevin-De-Koninck/Clean-Me/releases.atom',
          checkpoint: 'ccf08f11922423a6726e04ec2da1e875eacead7e6e282b6c2206981cd0f45117'
  name 'Clean-me'
  homepage 'https://github.com/Kevin-De-Koninck/Clean-Me'

  app 'Clean Me.app'
end
