cask 'dash' do
  version '4.0.1'
  sha256 '2ef4d0721a89feb680bb416fd7694cbec5441df442b64aabb8b7abbaa5c9b3f3'

  url "https://kapeli.com/downloads/v#{version.major}/Dash.zip"
  appcast "https://kapeli.com/Dash#{version.major}.xml",
          checkpoint: 'ed127f51a54c198287e90ea386f6b746c3dc2b78bc8d061c5b52d6e9919588e4'
  name 'Dash'
  homepage 'https://kapeli.com/dash'

  auto_updates true

  app 'Dash.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: [
                '~/Library/Application Support/Dash',
                '~/Library/Application Support/com.kapeli.dashdoc',
                '~/Library/Preferences/com.kapeli.dash.plist',
                '~/Library/Preferences/com.kapeli.dashdoc.plist',
              ]
end
