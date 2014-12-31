cask :v1 => 'lunchy' do
  version '0.1.4'
  sha256 'b6f7d1efa33fe651ad2efba8ab24f8ba618f369bef872afa3ab6ae78a003b39a'

  url "https://github.com/sosedoff/lunchy-go/releases/download/v#{version}/#{version}_darwin_amd64.zip"
  homepage 'https://github.com/sosedoff/lunchy-go'
  license :mit

  binary 'lunchy'
end
