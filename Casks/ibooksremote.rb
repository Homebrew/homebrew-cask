cask 'ibooksremote' do
  version '1.0.0'
  sha256 '21c0d2102344b2286425ebad80d2ba32c9a4c7978f58a3519254fa514864d3e0'

  url 'https://github.com/decapyre/iBookRemote/releases/download/v1.0.0/iBooksRemote-darwin-x64.zip'
  name 'iBooks Remote'
  homepage 'https://github.com/decapyre/iBookRemote'
  license :mit

  app 'iBooksRemote.app'
end
