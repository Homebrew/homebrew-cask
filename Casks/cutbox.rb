cask 'cutbox' do
  version '1.4.4'
  sha256 'd02690579212d8f974c70be1d89c25f6b20cb1a8bd8ef9afaca88ff98fffe815'

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  appcast 'https://github.com/cutbox/CutBox/releases.atom'
  name 'CutBox'
  homepage 'https://github.com/cutbox/CutBox'

  app 'CutBox.app'
end
