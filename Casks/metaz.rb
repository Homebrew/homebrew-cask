cask 'metaz' do
  version '1.0.beta-34'
  sha256 '3ea8c1d12c5415ea818497e07e125f8de27b45f2a748305e9bb62442c0a83847'

  # github.com/griff/metaz was verified as official when first introduced to the cask
  url "https://github.com/griff/metaz/releases/download/v#{version}/MetaZ-#{version}.zip"
  appcast 'https://github.com/griff/metaz/releases.atom',
          checkpoint: '58f754b6189dd83ce26d86fcedc6c738d607be3c126c3b97dab7d14fa9dc7834'
  name 'MetaZ'
  homepage 'https://griff.github.io/metaz/'

  app 'MetaZ.app'
end
