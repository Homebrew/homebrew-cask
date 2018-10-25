cask 'dozer' do
  version '2.0.0'
  sha256 '2aa0cd777cb37e7aaddd35d2e613b7bcfdfb1317fa13089de0914029d2750b85'

  url "https://github.com/Mortennn/Dozer/releases/download/v#{version}/Dozer.#{version}.dmg"
  appcast 'https://raw.githubusercontent.com/Mortennn/Dozer/master/appcast.xml'
  name 'Dozer'
  homepage 'https://github.com/Mortennn/Dozer'

  auto_updates :yes
  depends_on macos: '>= :sierra'

  app 'Dozer.app'
end
