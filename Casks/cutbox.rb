cask 'cutbox' do
  version '1.3.13'
  sha256 '2703050492ca055e6ca060c658ef18ac70667a3e3dac385118146ecc32293910'

  url "https://github.com/cutbox/CutBox/releases/download/#{version}/CutBox.dmg"
  appcast 'https://github.com/cutbox/CutBox/releases.atom'
  name 'CutBox'
  homepage 'https://github.com/cutbox/CutBox'

  app 'CutBox.app'
end
