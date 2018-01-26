cask 'spreaker-studio' do
  version '1.4.12'
  sha256 '743d2d057239c3a501d51055222fce9def82229000778f86f529b16fbe832fd9'

  url "https://download.spreaker.com/studio/spreaker-studio-#{version}.dmg"
  name 'Spreaker Studio'
  homepage 'https://www.spreaker.com/download'

  app 'Spreaker Studio.app'
end
