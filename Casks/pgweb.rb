cask 'pgweb' do
  version '0.9.1'
  sha256 '4d62aca5946459318e7c27eee3c4e21e03aee8b87780aeeeb967e9d2112534b5'

  url "https://github.com/sosedoff/pgweb/releases/download/v#{version}/pgweb_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/pgweb/releases.atom',
          checkpoint: '3081c417435d8fafd3e62d63d8a7911ecfcb15bedc6415e6d186f32b4a7e41b3'
  name 'pgweb'
  homepage 'https://github.com/sosedoff/pgweb'
  license :mit

  binary 'pgweb_darwin_amd64', target: 'pgweb'
end
