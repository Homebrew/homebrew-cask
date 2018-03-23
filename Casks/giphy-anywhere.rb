cask 'giphy-anywhere' do
  version '0.1.1'
  sha256 '70626df909977e073d3d87f5fa761d93415dcddc0955f0a45c027f7d63ffb656'

  url "https://github.com/bacongravy/giphy-anywhere/archive/v#{version}.zip"
  appcast 'https://github.com/bacongravy/giphy-anywhere/releases.atom',
          checkpoint: 'bc623595f7705fb4c6a8005d5ea69ec212d389b24d246f6d91abd6ba16ecbdd6'
  name 'GIPHY Anywhere'
  homepage 'https://github.com/bacongravy/giphy-anywhere'

  installer script: {
                      executable: '/usr/bin/make',
                      args:       ['-C', "#{staged_path}/giphy-anywhere-#{version}", 'install'],
                    }

  uninstall quit:       'net.bacongravy.giphy-anywhere',
            login_item: 'GIPHY Anywhere',
            delete:     '/Applications/GIPHY Anywhere.app'
end
