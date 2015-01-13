cask :v1 => 'iordning' do
  version '6.0.11'
  sha256 '69e174863fc72befdbbf4b0860fe51c4879d08e83a1a9335e0d9d78f045f6af8'

  url "http://www.aderstedtsoftware.com/downloads/iOrdning#{version.to_i}.zip"
  name 'iOrdning'
  name 'Economacs'
  homepage 'http://aderstedtsoftware.com/'
  license :commercial

  app 'iOrdning.app'
end
