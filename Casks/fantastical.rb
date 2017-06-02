cask 'fantastical' do
  version '2.3.8'
  sha256 '7d0f3783b0548bfda3abe7155dbfdbc664d5da82323c8733a48851041e676163'

  url "http://cdn.flexibits.com/Fantastical_#{version}.zip"
  appcast 'https://flexibits.com/fantastical/appcast2.php',
          checkpoint: '7cdb92212898bcafc053c64655e714286925ed629a9f22e6462736f07befa8e5'
  name 'Fantastical'
  homepage 'https://flexibits.com/fantastical'

  app "Fantastical #{version.major}.app"

  zap delete: '~/Library/Preferences/com.flexibits.fantastical.plist'
end
