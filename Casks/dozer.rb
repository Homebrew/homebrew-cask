cask 'dozer' do
  version '2.2.0'
  sha256 '113b52efdd62cc802f5c065477f6aee1ec641c87bf25750abd126d1ad9b71be2'

  url "https://github.com/Mortennn/Dozer/releases/download/#{version}/Dozer.#{version}.dmg"
  appcast 'https://github.com/Mortennn/Dozer/releases.atom'
  name 'Dozer'
  homepage 'https://github.com/Mortennn/Dozer'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Dozer.app'
end
