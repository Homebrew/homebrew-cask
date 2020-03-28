cask 'amitv87-pip' do
  version '1.20'
  sha256 '5d9a8c215ac29d1586d914335fd6d2700414b9e13890174ffa22c7cbeac4ba3a'

  url "https://github.com/amitv87/PiP/releases/download/#{version}/PiP-#{version}.dmg"
  appcast 'https://github.com/amitv87/PiP/releases.atom'
  name 'PiP'
  homepage 'https://github.com/amitv87/PiP'

  depends_on macos: '>= :sierra'

  app 'PiP.app'
end
