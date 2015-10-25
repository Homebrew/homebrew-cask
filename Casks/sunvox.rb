cask :v1 => 'sunvox' do
  version '1.9b'
  sha256 '3cb5d94c94337b34d8cf11918dc6fc0cb879a5bd87b42be054d16987cd18a725'

  url "http://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  name 'SunVox'
  homepage 'http://www.warmplace.ru/soft/sunvox/'
  license :gratis

  app 'sunvox/sunvox/osx/SunVox.app'

  depends_on :arch => :x86_64,
             :macos => '>= 10.6'
end
