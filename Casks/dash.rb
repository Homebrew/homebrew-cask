cask :v1 => 'dash' do
  version :latest
  sha256 :no_check

  url 'https://newyork.kapeli.com/downloads/v3/Dash.zip'
  appcast 'https://kapeli.com/Dash3.xml'
  name 'Dash'
  homepage 'https://kapeli.com/dash'
  license :commercial

  app 'Dash.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '~/Library/Application Support/Dash',
                  '~/Library/Preferences/com.kapeli.dash.plist',
                  '~/Library/Preferences/com.kapeli.dashdoc.plist',
                 ]
end
