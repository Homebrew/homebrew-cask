cask 'fantastical' do
  version '2.2.3'
  sha256 'd8adf22932a33acccce187fb48805beb509679e8298ceb00941f2f37398f0aa7'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: '9b6991140a00b5a096228d1ca8b1f378422a361d18aff0432814949e60a5a169'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'
  license :freemium

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
