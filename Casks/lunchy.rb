cask :v1 => 'lunchy' do
  version '0.1.6'
  sha256 '26b86cb3f955452353ae00e9be28b3fd843d7d2c4b202e4292e9251b0fe18433'

  url "https://github.com/sosedoff/lunchy-go/releases/download/v#{version}/#{version}_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/lunchy-go/releases.atom'
  name 'Lunchy'
  homepage 'https://github.com/sosedoff/lunchy-go'
  license :mit

  binary 'lunchy'
end
