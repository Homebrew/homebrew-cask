cask :v1 => 'antirsi' do
  version '2.1'
  sha256 'f2fc074959d65a11ed7302e1759f08342e0bb6472ce763af9aeec6703592e16f'

  url "http://antirsi.onnlucky.com/AntiRSI-#{version}.zip"
  name 'AntiRSI'
  homepage 'http://antirsi.onnlucky.com/'
  license :gpl

  app 'AntiRSI.app'
end
