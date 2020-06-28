cask 'playstatus' do
  version :latest
  sha256 :no_check

  url 'https://github.com/nbolar/PlayStatus/releases/latest/download/PlayStatus.app.zip'
  name 'PlayStatus'
  homepage 'https://github.com/nbolar/PlayStatus'

  app 'PlayStatus.app'
end
