cask 'nteract' do
  version '0.11.6'
  sha256 'e3e429c550332490b44aff938117db73336a4c204e8e12fd20d15a0a4fc97b90'

  url "https://github.com/nteract/nteract/releases/download/v#{version}/nteract-#{version}.dmg"
  appcast 'https://github.com/nteract/nteract/releases.atom'
  name 'nteract'
  homepage 'https://github.com/nteract/nteract'

  app 'nteract.app'
end
