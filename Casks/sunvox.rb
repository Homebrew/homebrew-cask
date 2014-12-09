cask :v1 => 'sunvox' do
  version '1.8'
  sha256 'c69c7e8e849c29139be61a6b82a5a9fa7c396fba84ec749d2f4531bb5550ca37'

  url "http://www.warmplace.ru/soft/sunvox/sunvox-#{version}.zip"
  homepage 'http://www.warmplace.ru/soft/sunvox/'
  license :unknown

  app 'sunvox/sunvox/osx/SunVox.app'
end
