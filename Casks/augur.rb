cask 'augur' do
  version '1.16.8'
  sha256 '0ca481d039c4e198f3c98164110b612aa3ca078ed3051793574df24841d353f6'

  url "https://github.com/AugurProject/augur-app/releases/download/v#{version}/mac-Augur-#{version}.dmg"
  appcast 'https://github.com/AugurProject/augur-app/releases.atom'
  name 'Augur'
  homepage 'https://github.com/AugurProject/augur-app/'

  app 'augur.app'
end
