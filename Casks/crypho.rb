cask 'crypho' do
  version '4.1.4'
  sha256 'e6b254dbe36e2456f0cb0947fa7400e7f706bbeb054862ff64d15424c732b73a'

  url "https://www.crypho.com/downloads/desktop/Crypho-#{version}.dmg"
  appcast 'https://www.crypho.com/download/'
  name 'Crypho'
  homepage 'https://www.crypho.com/'

  app 'Crypho.app'
end
