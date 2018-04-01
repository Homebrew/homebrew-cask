cask 'abricotine' do
  version '0.6.0'
  sha256 '083931133f303a9d7d48123e8616d35d79362b47532fb1249aa6a541bd5f68b8'

  # github.com/brrd/Abricotine was verified as official when first introduced to the cask
  url "https://github.com/brrd/Abricotine/releases/download/#{version}/Abricotine-#{version}-osx-x64.zip"
  appcast 'https://github.com/brrd/Abricotine/releases.atom',
          checkpoint: '1dcd5d078062b71f2cde5bf91726394f8e0263c08bb6264683be97f4a49edb13'
  name 'abricotine'
  homepage 'https://abricotine.brrd.fr/'

  app 'Abricotine.app'
end
