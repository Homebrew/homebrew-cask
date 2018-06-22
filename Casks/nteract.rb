cask 'nteract' do
  version '0.9.1'
  sha256 '9e832ea56ae266f76a5f82bbfd90573de22f189cd10513fe264816b2c6f787e8'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
