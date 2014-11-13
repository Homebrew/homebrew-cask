cask :v1 => 'basex' do
  version '7.8.1'
  sha256 '495b4c32cb916c02543a5f19b702c01516b1b8f452be537259dd6d1ad040ca87'

  url "http://files.basex.org/releases/#{version}/BaseX781.app.zip"
  homepage 'http://basex.org/home/'
  license :bsd

  app 'BaseX.app'
end
