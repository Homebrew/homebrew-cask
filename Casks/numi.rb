cask 'numi' do
  version '3.16,129:1499701563'
  sha256 'febb7078173d01199a587c29722aea4ba8515581afd9aff525eb7803d9867133'

  # dl.devmate.com/com.dmitrynikolaev.numi was verified as official when first introduced to the cask
  url "https://dl.devmate.com/com.dmitrynikolaev.numi/#{version.after_comma.before_colon}/#{version.after_colon}/Numi-#{version.after_comma.before_colon}.zip"
  appcast 'http://updates.devmate.com/com.dmitrynikolaev.numi.xml',
          checkpoint: '3d3c0c1dd63997eddca5f550ec5190ae969d1d51533cd906ae0e2172675e3e5b'
  name 'Numi'
  homepage 'https://numi.io/'

  app 'Numi.app'
end
