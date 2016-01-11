cask 'pgweb' do
  version '0.7.0'
  sha256 '146e9c35674652021d14c80e1cea9d009a6e29331638121130854867113703f7'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          :sha256 => '1f3fcec0f463001cd69229dfdd3bc1e7ed93c0c6e392004042bd8846fc4fbe7b'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', :target => 'pgweb'
end
