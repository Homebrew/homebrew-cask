cask 'dash' do
  version '3.2.1'
  sha256 'ee00799c3739452d272ba44580d9ae24589a97bea19105ed6d13115125a8bb85'

  url "http://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          :checkpoint => '0039f0d49ba41d2e83c1b9aaa2848d385d46ed009f170ffe881fe54856e47a18'
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
