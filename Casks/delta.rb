cask 'delta' do
  version '1.0.0'
  sha256 'bd99115957d9235d2353a48aee1bef0cc9679796a26cf557873dec58c37d3385'

  url "https://static-assets.getdelta.io/desktop_app/Delta-#{version}.dmg"
  name 'Delta'
  homepage 'https://getdelta.io/'

  app 'Delta.app'
end
