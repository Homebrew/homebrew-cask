cask 'ilya-birman-typography-layout' do
  version '3.5'
  sha256 '44e90298a08c84460d056e668cb4b70ce2dff79c44b3edf124abcf0a93602ad0'

  url "http://ilyabirman.ru/projects/typography-layout/download/ilya-birman-typolayout-#{version}-mac.dmg"
  name 'Ilya Birman typography layout'
  homepage 'http://ilyabirman.ru/projects/typography-layout/'

  artifact 'Install Ilya Birman Typography Layout.app/Contents/Resources/Layout/Ilya Birman Typography Layout.bundle', target: Pathname.new(File.expand_path('~')).join('Library/Keyboard Layouts/Ilya Birman Typography Layout.bundle')

  caveats "To enable new keyboard layouts, you must add them manually in System Preferences. More info on #{homepage}."
end
