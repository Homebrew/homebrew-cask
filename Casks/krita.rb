cask 'krita' do
  version '3.3.0'
  sha256 '2a548dfc9736f8dab8b5f0fa17b119bf85460b04ef683e804b2dd30aa8d21103'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  depends_on macos: '>= :mavericks'

  app 'Krita.app'
end
