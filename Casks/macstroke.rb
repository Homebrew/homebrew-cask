cask 'macstroke' do
  version '1.0.8'
  sha256 'c5b805e0a6caca0469f1bdfdc341689a7e5b0786d5652c035e91bf0ed9fdaccf'

  url "https://github.com/mtjo/MacStroke/releases/download/#{version}/MacStroke.zip"
  appcast 'https://github.com/mtjo/MacStroke/releases.atom'
  name 'MacStroke'
  homepage 'https://github.com/mtjo/MacStroke'

  app 'MacStroke.app'
end
