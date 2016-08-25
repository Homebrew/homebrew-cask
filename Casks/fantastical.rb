cask 'fantastical' do
  version '2.2.5'
  sha256 'ad4dafbaf777ab41d51769f0a7c628a8b4d478f81bbbdd4b8429a63a1bc3deeb'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: '0ceed44f4b50a0aa57a70d60a484836bf7a4c7f0d886b154bc65b6def1e50ec2'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
