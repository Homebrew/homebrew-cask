cask :v1 => 'qtpass' do
<<<<<<< HEAD
  version '1.0.4'
  sha256 'cb5eb74ba37ded2a36d3362cc85e4a3c45aad095be7fe77252eab885f7d32c86'
=======
  version '1.0.3'
  sha256 '404dad56342547d274aeb746f92039050eb3a4e67ae2164d3a141fb095ff8a75'
>>>>>>> 4f2a29140a31bdc3765c01586082613de3023b6b

  url "https://github.com/IJHack/qtpass/releases/download/v#{version}/qtpass-#{version}.dmg"
  appcast 'https://github.com/IJHack/qtpass/releases.atom'
  name 'QtPass'
  homepage 'https://qtpass.org/'
  license :gpl

  app 'QtPass.app'
end
