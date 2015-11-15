cask :v1 => 'qtpass' do
  version '1.0.4'
  sha256 'cb5eb74ba37ded2a36d3362cc85e4a3c45aad095be7fe77252eab885f7d32c86'

  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom'
  name 'QtPass'
  homepage 'https://qtpass.org/'
  license :gpl

  app 'QtPass.app'
end
