cask :v1 => 'aseprite' do
  version '0.9.5'
  sha256 '299eda3e5f11ae60d58bccdd26156169db6ebc01be8e806d7909f0b8f22e2928'

  url "https://aseprite.googlecode.com/files/ASEPRITE_#{version}.dmg"
  homepage 'http://www.aseprite.org'
  license :oss

  app 'aseprite.app'
end
