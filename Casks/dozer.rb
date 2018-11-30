cask 'dozer' do
  version '2.2.1'
  sha256 'c4582e2490060ee9eecdc349b88a02eceed56d1f35b1a90f969adf17e63b5d7b'

  url "https://github.com/Mortennn/Dozer/releases/download/#{version}/Dozer.#{version}.dmg"
  appcast 'https://github.com/Mortennn/Dozer/releases.atom'
  name 'Dozer'
  homepage 'https://github.com/Mortennn/Dozer'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Dozer.app'
end
