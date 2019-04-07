cask 'cutbox' do
  version '1.4.3'
  sha256 '244e2eb708369e006e84b1c3db0aa969a931cf7473096b6b9ce4d25e8e7f4a96'

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  appcast 'https://github.com/cutbox/CutBox/releases.atom'
  name 'CutBox'
  homepage 'https://github.com/cutbox/CutBox'

  app 'CutBox.app'
end
