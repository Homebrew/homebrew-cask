cask :v1 => 'sunvox' do
  version '1.8.1'
  sha256 'd1631d8744593763a6ce1c2459f95798ec494abe7068c5c692d45028db06f7e2'

  url "https://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  name 'SunVox'
  homepage 'http://www.warmplace.ru/soft/sunvox/'
  license :gratis

  app 'sunvox/sunvox/osx/SunVox.app'

  depends_on :arch => :x86_64,
             :macos => '>= 10.6'
end
