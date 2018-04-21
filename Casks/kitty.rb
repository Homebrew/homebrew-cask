cask 'kitty' do
  version '0.9.0'
  sha256 'e464e01250de024697189db808ec474379818b82400e218a89d5a21315d6452a'

  url "https://github.com/kovidgoyal/kitty/releases/download/v#{version}/kitty-#{version}.dmg"
  appcast 'https://github.com/kovidgoyal/kitty/releases.atom',
          checkpoint: '9655d95cbdeeb598ec438544f30a182ef542e66f3a1c10f29ca3b7d978b8e687'
  name 'kitty'
  homepage 'https://github.com/kovidgoyal/kitty'

  app 'kitty.app'
end
