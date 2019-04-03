cask 'cutbox' do
  version '1.4.1'
  sha256 '9869697cd2fd3b552a4a828b5e57ff6b12fbc610c97bef498d0bd1f6068ddb6e'

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  appcast 'https://github.com/cutbox/CutBox/releases.atom'
  name 'CutBox'
  homepage 'https://github.com/cutbox/CutBox'

  app 'CutBox.app'
end
