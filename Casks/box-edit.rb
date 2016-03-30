cask 'box-edit' do
  version :latest
  sha256 :no_check

  url 'https://app.box.com/static/BoxEdit/BoxEditInstaller.dmg'
  name 'Box Edit'
  homepage 'https://app.box.com/download-box-edit/'
  license :gratis

  app 'Install Box Edit.app/Contents/Resources/Box Edit.app',
      target: "#{ENV['HOME']}/Library/Application Support/Box/Box Edit/Box Edit.app"
  internet_plugin 'Install Box Edit.app/Contents/Resources/Box Edit.plugin'

  uninstall quit: [
                    'com.Box.Box-Edit',
                    'com.box.Box-Local-Com-Server',
                  ]

  zap delete: '~/Library/Application Support/Box/Box Edit',
      rmdir:  '~/Library/Application Support/Box'

  caveats <<-EOS.undent
    Box Edit currently only works with Safari and Firefox.
    Restart your browser to load the plugin.
  EOS
end
