cask 'krita' do
  version '3.2.0'
  sha256 '877df74c49c3aa86ab24ee47c46535ad0e1545bcb8a6bdc6869c2598703f3258'

  # kde.org/stable/krita was verified as official when first introduced to the cask
  url "http://download.kde.org/stable/krita/#{version}/krita-#{version}.dmg"
  name 'Krita'
  homepage 'https://krita.org/'

  depends_on macos: '>= :mavericks'

  app 'Krita.app'
end
