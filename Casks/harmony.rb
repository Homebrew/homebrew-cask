cask 'harmony' do
  version '0.4.3'
  sha256 'f2af2b8f610ff6684c594742a5c6060389adf0f2300ecdf8d67ef27941a1029c'

  # github.com/vincelwt/harmony was verified as official when first introduced to the cask
  url "https://github.com/vincelwt/harmony/releases/download/v#{version}/harmony-#{version}.dmg"
  appcast 'https://github.com/vincelwt/harmony/releases.atom',
          checkpoint: '66ac73d9631e538bd8fe665344a52ce11f1c6925cc28ee2a8892060d29805830'
  name 'Harmony'
  homepage 'http://getharmony.xyz/'

  app 'Harmony.app'
end
