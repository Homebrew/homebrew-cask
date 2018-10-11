cask 'nteract' do
  version '0.11.9'
  sha256 '5ff3c9059c6fd89936494580d23ec2cd0227c7f18994cecee0e99f556b32718c'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
