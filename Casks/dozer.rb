cask 'dozer' do
  version '2.2.2'
  sha256 '72785310a6fd910d81544ac8a89270b4318a2b70c5dfda7e179d26716063a60e'

  url "https://github.com/Mortennn/Dozer/releases/download/#{version}/Dozer.#{version}.dmg"
  appcast 'https://github.com/Mortennn/Dozer/releases.atom'
  name 'Dozer'
  homepage 'https://github.com/Mortennn/Dozer'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Dozer.app'
end
