cask 'ibooksremote' do
  version '1.0.0'
  sha256 '21c0d2102344b2286425ebad80d2ba32c9a4c7978f58a3519254fa514864d3e0'

  url "https://github.com/decapyre/iBookRemote/releases/download/v#{version}/iBooksRemote-darwin-x64.zip"
  appcast 'https://github.com/decapyre/iBookRemote/releases.atom',
          checkpoint: '42f294c53eed32d814d0ca604468d05f58528c28e64badeec94f06a74b5db67b'
  name 'iBooks Remote'
  homepage 'https://github.com/decapyre/iBookRemote'

  app 'iBooksRemote.app'
end
