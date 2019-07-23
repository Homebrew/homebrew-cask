cask 'checksum-validator' do
  version '1.1.6'
  sha256 '3c2c4c7cfd84e3ee68c90ffa617b1f8bae505685384b53dc8681722abb8f1fcc'

  url "https://github.com/alexanderwe/checksum-validator/releases/download/v#{version}/checksum-validator-#{version}.dmg"
  appcast 'https://github.com/alexanderwe/checksum-validator/releases.atom'
  name 'Checksum Validator'
  homepage 'https://github.com/alexanderwe/checksum-validator'

  app 'Checksum Validator.app'
end
