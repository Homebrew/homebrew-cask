cask :v1 => 'clock' do
  version '1.1'
  sha256 'f2def6485626b4d10a535cb86eb7c877da8d59a2103f8da7b211970c88b96913'

  url "https://github.com/downloads/zachwaugh/Clock.app/Clock-#{version}.zip"
  homepage 'http://zachwaugh.me/clock/'
  license :oss

  app 'Clock.app'
end
