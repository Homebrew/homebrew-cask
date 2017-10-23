cask 'spotmenu' do
  version '1.7'
  sha256 'e9c829bcc1120491bcf59752ff8c7887595c6fb98e6843dfbd373e2ae78dfcdf'

  url "https://github.com/kmikiy/SpotMenu/releases/download/v#{version}/SpotMenu.zip"
  appcast 'https://github.com/kmikiy/SpotMenu/releases.atom',
          checkpoint: '094ff934191e7b4011f6c5e1b9dfae3e6cdd7364d2fb803ee7acd9e1d446d37d'
  name 'SpotMenu'
  homepage 'https://github.com/kmikiy/SpotMenu'

  app 'SpotMenu.app'
end
