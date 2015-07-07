cask :v1 => 'mediaelch' do
  version '2.2.2'
  sha256 '0968767db15fe505ed39359566ef446badcdd4ccbd880b40dbd3b4f609a6e9aa'

  url "http://www.kvibes.de/releases/mediaelch/#{version}/MediaElch-#{version}.dmg"
  name 'MediaElch'
  homepage 'http://www.kvibes.de/en/mediaelch/'
  license :gpl

  app 'MediaElch.app'
end
