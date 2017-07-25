cask 'atraci' do
  version '0.7.0'
  sha256 '69ea5a32574473b4a7ad39a1743b9eb05262530f8b6d0b25b32d21f03115df12'

  url "https://github.com/Atraci/Atraci/releases/download/#{version}/Atraci-mac.zip"
  appcast 'https://github.com/Atraci/Atraci/releases.atom',
          checkpoint: '72d55bc157b78c2380239b9f157d76cd5b98551496b995d54b83d06290ae4255'
  name 'Atraci'
  homepage 'https://github.com/Atraci/Atraci/'

  app 'Atraci.app'
end
