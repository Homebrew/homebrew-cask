cask 'krita' do
  version '3.1.2'
  sha256 '7d8e5b97615327122887f1114a009093e2974aa4fca01e56950fa25173b9600a'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  depends_on macos: '>= :mavericks'

  app 'Krita.app'
end
