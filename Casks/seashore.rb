cask 'seashore' do
  version '2.3.3'
  sha256 '846a3d1d762c7e02da5a890539fb5c42a3560020bdb9ba66267b69ec498172a1'

  url "https://github.com/robaho/seashore/releases/download/v#{version}/seashore-bin-#{version}.dmg"
  appcast 'https://github.com/robaho/seashore/releases.atom'
  name 'Seashore'
  homepage 'https://github.com/robaho/seashore'

  app 'Seashore.app'
end
