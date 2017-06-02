cask 'krita' do
  version '3.1.4'
  sha256 '365010548e2cc288744a2b90ccf8c3fc0abf18d0b1b028cdd6a0e4fdab94f6c1'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  depends_on macos: '>= :mavericks'

  app 'Krita.app'
end
