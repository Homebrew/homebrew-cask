cask 'ilya-birman-typography-layout' do
  version '3.6'
  sha256 '95366ae651a39f59fa6fd92e07edac6961d02d33ef0ea2e479152a703c567b6c'

  url "http://ilyabirman.ru/projects/typography-layout/download/ilya-birman-typolayout-#{version}-mac.dmg"
  name 'Ilya Birman typography layout'
  homepage 'http://ilyabirman.ru/projects/typography-layout/'

  artifact 'Install Ilya Birman Typography Layout.app/Contents/Resources/Layout/Ilya Birman Typography Layout.bundle', target: Pathname.new(File.expand_path('~')).join('Library/Keyboard Layouts/Ilya Birman Typography Layout.bundle')

  caveats <<~EOS
    To enable new keyboard layouts, you must add them manually in System Preferences. More info on #{homepage}.
  EOS
end
