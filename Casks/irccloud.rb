cask 'irccloud' do
  version '0.3.0'
  sha256 '777a8fbe83f82b5cbd686dc8382a02ed0496521be222e4fecf3c4669d52f6007'

  url "https://github.com/irccloud/irccloud-desktop/releases/download/v#{version}/irccloud-desktop-#{version}.dmg"
  appcast 'https://github.com/irccloud/irccloud-desktop/releases.atom',
          checkpoint: 'a4d332dccac9aa9517eb76095555cc2195d3005b1853167531b89ab39ba9ce49'
  name 'IRCCloud Desktop'
  homepage 'https://github.com/irccloud/irccloud-desktop'

  app 'IRCCloud.app'
end
