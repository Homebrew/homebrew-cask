cask 'krita' do
  version '3.1.3'
  sha256 '5f25d8263f8769113ae4d653906e6507dc4555d8ff55838a65a7874c8bcd42c0'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  depends_on macos: '>= :mavericks'

  app 'Krita.app'
end
