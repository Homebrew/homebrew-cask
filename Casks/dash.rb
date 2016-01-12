cask 'dash' do
  version '3.2.1'
  sha256 'ee00799c3739452d272ba44580d9ae24589a97bea19105ed6d13115125a8bb85'

  url "http://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          :sha256 => '7d58a4f1ff115db88df739f857f17d0d38077023e3e554716e4809a221eb4ea8'
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
