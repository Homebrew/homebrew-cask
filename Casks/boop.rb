cask 'boop' do
  version '1.1.0'
  sha256 '73842c977ee48b9905e94769fbfedc4a9c29881d280ce65ee06635079b3f6660'

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
