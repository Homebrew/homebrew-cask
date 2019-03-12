cask 'dozer' do
  version '3.0.4'
  sha256 '1dede8c4e4e509b5fc8275fa9bca2a968ed05db596468f0f8038d970056e1f36'

  url "https://github.com/Mortennn/Dozer/releases/download/v#{version}/Dozer.#{version}.dmg"
  appcast 'https://github.com/Mortennn/Dozer/releases.atom'
  name 'Dozer'
  homepage 'https://github.com/Mortennn/Dozer'

  auto_updates true
  depends_on macos: '>= :high_sierra'

  app 'Dozer.app'
end
