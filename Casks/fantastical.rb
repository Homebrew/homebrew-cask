cask 'fantastical' do
  version '2.3'
  sha256 '13eb72a23e5c8b350f0ffe4e4c8573d0a6657f874baaef097d676dce1bf3affd'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: '96ed7d041cfde1591d7bb755b15eb26f994ae89a063a5734c284cf3b808e8828'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  app 'Fantastical 2.app'

  postflight do
    suppress_move_to_applications
  end

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
