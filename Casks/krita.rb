cask 'krita' do
  version '3.2.1'
  sha256 '4c4e6aa1200f30afb1ff2b9e7161f1dd62c5dcfd36604c21a14270c519080a07'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  depends_on macos: '>= :mavericks'

  app 'Krita.app'
end
