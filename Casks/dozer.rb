cask 'dozer' do
  version '3.0.3'
  sha256 '370909940cc2187848467405fb3d0a65a2280cffcc666a9883ea63516bdb274c'

  url "https://github.com/Mortennn/Dozer/releases/download/v#{version}/Dozer.#{version}.dmg"
  appcast 'https://github.com/Mortennn/Dozer/releases.atom'
  name 'Dozer'
  homepage 'https://github.com/Mortennn/Dozer'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Dozer.app'
end
