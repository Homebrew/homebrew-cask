cask 'fantastical' do
  version '2.3.2'
  sha256 '441316b8aa4dadde79d5004b93c5c2b3ed184ed86be226d7264710140168aa27'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: '3e99a53fc1cf11f016c2aab6fdadc0de9476dc4712fa348b919dab5f609711cc'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  app "Fantastical #{version.major}.app"

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
