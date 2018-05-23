cask 'cloudytabs' do
  version '1.9.1'
  sha256 'acbccf2172242b6cd5e702ad06293e616932889e75e1dbfdb3b6229a0dbf87e0'

  url "https://github.com/josh-/CloudyTabs/releases/download/v#{version}/CloudyTabs.zip"
  appcast 'https://github.com/josh-/CloudyTabs/releases.atom',
          checkpoint: 'a57eba0c907758cc9d3c34ea1bfa8026e1eea5bbf9049feefd0a8d9715eb01d5'
  name 'CloudyTabs'
  homepage 'https://github.com/josh-/CloudyTabs/'

  app 'CloudyTabs.app'
end
