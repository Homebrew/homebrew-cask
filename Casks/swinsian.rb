cask 'swinsian' do
  version '1.11.7'
  sha256 'c8d40f7486ea465adb571f390fe25c4a3fcedce978684e2d4872836c928efdbc'

  url "https://www.swinsian.com/sparkle/Swinsian_#{version}.zip"
  appcast 'https://www.swinsian.com/sparkle/sparklecast.xml',
          checkpoint: 'a36dbca294e33d5450d0a3f04ad3e8bc7e1b2869d4f1ebfefa7a48067866b5bc'
  name 'Swinsian'
  homepage 'https://swinsian.com'
  license :commercial

  app 'Swinsian.app'
end
