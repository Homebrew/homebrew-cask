cask 'sunvox' do
  version '1.9.1'
  sha256 'b03d79483c7fff705e5373dc9c1853c521208f7318f21032a809aae8f186a77d'

  url "http://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  name 'SunVox'
  homepage 'http://www.warmplace.ru/soft/sunvox/'

  depends_on arch:  :x86_64,
             macos: '>= 10.6'

  app 'sunvox/sunvox/osx/SunVox.app'
end
