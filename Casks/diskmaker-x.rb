cask :v1 => 'diskmaker-x' do
  version '4b4'
  sha256 '84c7c61973182573ba4d819f493528b665ad2c06a77698999f21ee2026b18a15'

  url "http://diskmakerx.com/downloads/DiskMakerX#{version}.dmg"
  homepage 'http://diskmakerx.com/'
  license :unknown

  app "DiskMaker X #{version}.app"
end
