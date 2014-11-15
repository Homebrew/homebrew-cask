cask :v1 => 'simplecap' do
  version '1.2.1'
  sha256 'e15f7ac1c9c07821aee2c6e091185f57e49d99f42f992cf3c27bfd059daa3d7f'

  url "http://xcatsan.com/simplecap/download/SimpleCap-#{version}.zip"
  homepage 'http://xcatsan.com/simplecap-en/'
  license :unknown

  app 'SimpleCap.app'
end
