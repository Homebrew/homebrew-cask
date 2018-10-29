cask 'nteract' do
  version '0.12.1'
  sha256 '5cb8f3829abb9fce653e93e3592f51720d863cc626c9004e86de25b6b972edfc'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
