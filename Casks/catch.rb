cask :v1 => 'catch' do
  version '1.9.2'
  sha256 '4bc7e9dbfaf11581f6caf63fd57e8df1e45245da0980656a748cf31ff6cff162'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/mipstian/catch/releases/download/#{version}/Catch-#{version}.zip"
  appcast 'https://github.com/mipstian/catch/releases.atom'
  name 'Catch'
  homepage 'http://www.giorgiocalderolla.com/index.html#catch'
  license :oss

  app 'Catch.app'
end
