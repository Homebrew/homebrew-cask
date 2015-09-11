cask :v1 => 'lunchy' do
  version '0.2.0'
  sha256 '6a5d90119355b109c73ff71a2063413926e5e5b363a9d93a8ef68e6e9c502485'

  url "https://github.com/sosedoff/lunchy-go/releases/download/v#{version}/#{version}_darwin_amd64.zip"
  appcast 'https://github.com/sosedoff/lunchy-go/releases.atom'
  name 'Lunchy'
  homepage 'https://github.com/sosedoff/lunchy-go'
  license :mit

  binary 'lunchy'
end
