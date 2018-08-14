cask 'ibooksremote' do
  version '1.0.0'
  sha256 '21c0d2102344b2286425ebad80d2ba32c9a4c7978f58a3519254fa514864d3e0'

  url "https://github.com/bryanberger/iBookRemote/releases/download/v#{version}/iBooksRemote-darwin-x64.zip"
  appcast 'https://github.com/bryanberger/iBookRemote/releases.atom'
  name 'iBooks Remote'
  homepage 'https://github.com/bryanberger/iBookRemote'

  app 'iBooksRemote.app'
end
