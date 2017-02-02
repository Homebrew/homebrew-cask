cask 'logic' do
  version '1.2.12'
  sha256 'd515f3c21c073ba5cb60001894eff7312a61c3c2a9b9a342328ff19e971996d6'

  url "http://downloads.saleae.com/logic/#{version}/Logic-#{version}-Darwin.dmg"
  name 'Logic'
  homepage 'https://www.saleae.com/'

  depends_on macos: '>= :lion'

  app 'Logic.app'
end
