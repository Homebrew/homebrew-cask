cask 'ilya-birman-typography-layout' do
  version '3.4.1'
  sha256 'a4d830a490e2dbdc82c8f38e613391aeb62856bae3ed85774e3d939224de8af8'

  url "http://ilyabirman.ru/projects/typography-layout/download/ilya-birman-typolayout-#{version}-mac.dmg"
  name 'Ilya Birman typography layout'
  homepage 'http://ilyabirman.ru/projects/typography-layout/'

  artifact 'Install Ilya Birman Typography Layout.app/Contents/Resources/Layout/Ilya Birman Typography Layout.bundle', target: Pathname.new(File.expand_path('~')).join('Library/Keyboard Layouts/Ilya Birman Typography Layout.bundle')

  caveats "To enable new keyboard layouts, you must add them manually in System Preferences. More info on #{homepage}."
end
