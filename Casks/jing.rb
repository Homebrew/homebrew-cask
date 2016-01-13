cask 'jing' do
  version :latest
  sha256 :no_check

  url 'http://download.techsmith.com/jing/mac/jing.dmg'
  appcast 'http://www.techsmith.com/redirect.asp?product=jing&ver=2.0.0&lang=enu&target=SparkleAppcast',
          :checkpoint => 'fab0cd39e2113e82f4c26d137a9f87783e3293e4af1876f080932dddc10d2eac'
  name 'Jing'
  homepage 'https://www.techsmith.com/jing.html'
  license :gratis

  app 'Jing.app'
end
