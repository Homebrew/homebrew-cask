cask 'cutbox' do
  version '1.4.8'
  sha256 '99d189593f421fb1a230de2dacede9140f13930d462a8e986ba8c42ff2978ecb'

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  appcast 'https://github.com/cutbox/CutBox/releases.atom'
  name 'CutBox'
  homepage 'https://github.com/cutbox/CutBox'

  app 'CutBox.app'
end
