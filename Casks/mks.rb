cask 'mks' do
  version '1.5'
  sha256 '623ca4282f5422a15f3ff7187ba52dbbf338e208f965e091e0c562dfbbb0af94'

  url "https://github.com/x0054/MKS/releases/download/#{version}/MKS.dmg"
  appcast 'https://github.com/x0054/MKS/releases.atom'
  name 'MKS'
  homepage 'https://github.com/x0054/MKS'

  app 'MKS.app'
end
