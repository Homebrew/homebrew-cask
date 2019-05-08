cask 'clean-me' do
  version '1.3.0'
  sha256 '63871b967eb434f7e74d1fc5e1e8ee40093b31d494ca873a493bb61725c1ddc6'

  url "https://github.com/Kevin-De-Koninck/Clean-Me/releases/download/v#{version}/Clean.Me.app.zip"
  appcast 'https://github.com/Kevin-De-Koninck/Clean-Me/releases.atom'
  name 'Clean-me'
  homepage 'https://github.com/Kevin-De-Koninck/Clean-Me'

  app 'Clean Me.app'
end
