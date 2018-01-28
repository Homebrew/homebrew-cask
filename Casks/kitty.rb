cask 'kitty' do
  version '0.7.0'
  sha256 '9e1176ffcced51ea5e631af64c8205f86243562c76943b35008d5880d808c52f'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: 'bc2298eebb5cac180a54d6386f0f22f0dbe1fe6480a97b889146a81b64e5a7e7'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'
end
