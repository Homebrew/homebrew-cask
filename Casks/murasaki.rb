cask :v1 => 'murasaki' do
  version '1.0.2'
  sha256 '2dd07c47d59aff053b8be804e08b087ce8d9e127365de43a206011a63ba42966'

  url "http://genjiapp.com/mac/murasaki/downloads/murasaki_v#{version}.zip"
  homepage 'http://genjiapp.com/mac/murasaki/index_en.html'
  license :unknown

  app 'Murasaki.app'
end
