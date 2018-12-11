cask 'dozer' do
  version '3.0.0'
  sha256 'dee7af7cc3685e6182bb5569f0ee563ff69816a7e16b6ac5954eccc28846619e'

  url "https://github.com/Mortennn/Dozer/releases/download/#{version}/Dozer.#{version}.dmg"
  appcast 'https://github.com/Mortennn/Dozer/releases.atom'
  name 'Dozer'
  homepage 'https://github.com/Mortennn/Dozer'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Dozer.app'
end
