cask 'box-edit' do
  version :latest
  sha256 :no_check

  # e3.boxcdn.net/box-installers/boxedit/mac/currentrelease was verified as official when first introduced to the cask
  url 'https://e3.boxcdn.net/box-installers/boxedit/mac/currentrelease/BoxToolsInstaller.dmg'
  name 'Box Edit'
  homepage 'https://www.box.com/resources/downloads'

  app 'Install Box Tools.app/Contents/Resources/Box Edit.app',
      target: "#{ENV['HOME']}/Library/Application Support/Box/Box Edit/Box Edit.app"

  uninstall quit: [
                    'com.Box.Box-Edit',
                    'com.box.Box-Local-Com-Server',
                  ]

  zap trash: '~/Library/Application Support/Box/Box Edit',
      rmdir: '~/Library/Application Support/Box'

  caveats <<~EOS
    Box Edit currently only works with Safari and Firefox.
    Restart your browser to load the plugin.
  EOS
end
