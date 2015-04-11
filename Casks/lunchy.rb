cask :v1 => 'lunchy' do
  version '0.1.5'
  sha256 '13afd65921d3251dbd5f6c44bdf6f6a037d10228a69876c658470a23fc573f7f'

  url "https://github.com/sosedoff/lunchy-go/releases/download/v#{version}/#{version}_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/lunchy-go/releases.atom'
  name 'Lunchy'
  homepage 'https://github.com/sosedoff/lunchy-go'
  license :mit

  binary 'lunchy'
end
