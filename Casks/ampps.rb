cask :v1 => 'ampps' do
  version '3.3'
  sha256 '2304de68a6de293f1b36c72ac8763414da4397c5f80a3ccaebc5039afab55dae'

  url "http://files.ampps.com/AMPPS-#{version}.dmg"
  name 'AMPPS'
  homepage 'http://www.ampps.com'
  license :gratis

  suite 'AMPPS'
end
