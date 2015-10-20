cask :v1 => 'lunchy' do
  version '0.2.1'
  sha256 '3f4a2ae93e474352c29649b12f5f4f0559f1f39a344f15352f3a51a141ad404b'

  url "https://github.com/sosedoff/lunchy-go/releases/download/v#{version}/#{version}_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/lunchy-go/releases.atom'
  name 'Lunchy'
  homepage 'https://github.com/sosedoff/lunchy-go'
  license :mit

  binary 'lunchy'
end
