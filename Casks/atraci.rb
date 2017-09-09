cask 'atraci' do
  version '0.7.0'
  sha256 '69ea5a32574473b4a7ad39a1743b9eb05262530f8b6d0b25b32d21f03115df12'

  url "https://github.com/Atraci/Atraci/releases/download/#{version}/Atraci-mac.zip"
  appcast 'https://github.com/Atraci/Atraci/releases.atom',
          checkpoint: 'f05d668c20684c63804b6355d1d074ba53eb6428cfe06fae7a9403dd25f89883'
  name 'Atraci'
  homepage 'https://github.com/Atraci/Atraci/'

  app 'Atraci.app'
end
