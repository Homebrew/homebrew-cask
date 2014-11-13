cask :v1 => 'dash' do
  version :latest
  sha256 :no_check

  url 'http://kapeli.com/Dash.zip'
  appcast 'http://kapeli.com/Dash.xml'
  homepage 'http://kapeli.com/dash'
  license :unknown

  app 'Dash.app'

  postflight do
    suppress_move_to_applications
  end

  zap :delete => [
                  '~/Library/Application Support/Dash/library.dash',
                  '~/Library/Preferences/com.kapeli.dash.plist',
                 ]
end
