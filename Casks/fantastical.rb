cask 'fantastical' do
  version '2.2'
  sha256 '5e123b62ab79dac3929dada00c7d937fe4f5b65031bf3b29e50b6528fb5de83c'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: '53892f18edd98af6d7a24d6f71385252fdaa5cb6cc490f0d64dc1546c3b1a64a'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
