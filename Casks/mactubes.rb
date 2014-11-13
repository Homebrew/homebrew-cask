cask :v1 => 'mactubes' do
  version '3.1.6'
  sha256 'd3fbe0ee7fb95c1eea0f70b84140a816561601f0a1f36ba2b16ba63bfa57cd19'

  url "http://macapps.sakura.ne.jp/mactubes/archives/MacTubes_v#{version}.zip"
  homepage 'http://macapps.sakura.ne.jp/mactubes/index_en.html'
  license :unknown

  app "MacTubes_v#{version}/MacTubes.app"
end
