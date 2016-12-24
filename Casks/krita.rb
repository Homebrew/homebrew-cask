cask 'krita' do
  version '3.1.0'
  sha256 '326233b181610c91bcb5126c6350c7e74747cc84cb6d48a1f219d39beb226760'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  app 'Krita.app'
end
