cask 'cutbox' do
  version '1.4.5'
  sha256 '1288203c2fbcbff806ca4aa1d237ef24edd5771a24aecf497f09cd023d6dd461'

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  appcast 'https://github.com/cutbox/CutBox/releases.atom'
  name 'CutBox'
  homepage 'https://github.com/cutbox/CutBox'

  app 'CutBox.app'
end
