cask 'dozer' do
  version '3.0.5'
  sha256 '8d79dfd8b1678d833618a2b65003cc596461f573c5d5e404f6d7a6c5a4e91278'

  url "https://github.com/Mortennn/Dozer/releases/download/v#{version}/Dozer.#{version}.dmg"
  appcast 'https://github.com/Mortennn/Dozer/releases.atom'
  name 'Dozer'
  homepage 'https://github.com/Mortennn/Dozer'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Dozer.app'
end
