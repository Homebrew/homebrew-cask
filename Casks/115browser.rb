cask :v1 => '115browser' do
  version '5.1.1.31.20150614'
  sha256 'b87cc832bb11a90a087273be093f923e8f219f6a8b50fe890d031fdb912f7ba0'

  url "http://down.115.com/client/mac/115Browser_v#{version}.dmg"
  name '115浏览器'
  name '115Browser'
  homepage 'http://pc.115.com/mac.html'
  license :gratis

  app '115Browser.app'
end
