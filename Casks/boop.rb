cask 'boop' do
  version '1.2.0'
  sha256 '60b285689b818f0dbe2c268ec79678d2f61f9047d5402991b6b66ddf606c6056'

  # github.com/IvanMathy/Boop was verified as official when first introduced to the cask
  url "https://github.com/IvanMathy/Boop/releases/download/#{version}/Boop.zip"
  appcast 'https://github.com/IvanMathy/Boop/releases.atom'
  name 'Boop'
  homepage 'https://boop.okat.best/'

  depends_on macos: '>= :mojave'

  app 'Boop.app'

  zap trash: [
               '~/Library/Application Scripts/com.okatbest.boop',
               '~/Library/Containers/com.okatbest.boop',
             ]
end
