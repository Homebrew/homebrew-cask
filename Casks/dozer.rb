cask 'dozer' do
  version '1.1.2'
  sha256 '4d44bf8a0227222023c4f0a751ab2eef82e8b377016640ffd3d6bf9b268bdc41'

  url "https://github.com/Mortennn/Dozer/releases/download/#{version}/Dozer.#{version}.dmg"
  appcast 'https://github.com/Mortennn/Dozer/releases.atom'
  name 'Dozer'
  homepage 'https://github.com/Mortennn/Dozer'

  auto_updates true
  depends_on macos: '>= :sierra'

  app 'Dozer.app'
end
