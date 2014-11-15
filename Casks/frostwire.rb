cask :v1 => 'frostwire' do
  version '5.7.2'
  sha256 'c559d214576684a97cee0bea15c91caf8dd2c3609cc498039813724ea475642e'

  url "http://dl.frostwire.com/frostwire/#{version}/frostwire-#{version}.dmg"
  homepage 'http://www.frostwire.com'
  license :unknown

  app 'FrostWire.app'
end
