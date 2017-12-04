cask 'kitty' do
  version '0.5.1'
  sha256 'a34c3e08717129315d89382afc01bd6dc9b0b9853f5bceff81cbcf05590c18f9'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: 'e9397b9547432552e13e9d9d942cb74f17cb49c37147fa9738ad27cb3cf1f1d9'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'
end
