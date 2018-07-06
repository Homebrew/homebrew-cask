cask 'jing' do
  version '2.8.1'
  sha256 '0eac9085ab7fe35f4530bde2e5c5cb4fb574c306d3a7331a8bf9186506b2c136'

  url 'https://download.techsmith.com/jing/mac/jing.dmg'
  appcast 'https://download.techsmith.com/update/jing/enu/appcast.xml'
  name 'Jing'
  homepage 'https://www.techsmith.com/jing.html'

  depends_on macos: '>= :mountain_lion'

  app 'Jing.app'
end
