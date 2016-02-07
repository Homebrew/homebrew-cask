cask 'fantastical' do
  version '2.1.5'
  sha256 '816e780ead978f15fd1bb762c80f8c8a5abf9551c121ba502f61a528d962fb60'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: '891edbc3657ab7f08d356377092aa01beef808c6e7d5a19a99ef3d471786908a'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
