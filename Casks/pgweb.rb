cask 'pgweb' do
  version '0.7.0'
  sha256 '146e9c35674652021d14c80e1cea9d009a6e29331638121130854867113703f7'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          :sha256 => '3a0c23bf19e274e52895f4d1a9ae781cb86704f2d2eefa53d8a89690786ec748'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end
