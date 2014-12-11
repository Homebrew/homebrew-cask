cask :v1 => 'jing' do
  version :latest
  sha256 :no_check

  url 'http://download.techsmith.com/jing/mac/jing.dmg'
  appcast 'http://www.techsmith.com/redirect.asp?product=jing&ver=2.0.0&lang=enu&target=SparkleAppcast'
  homepage 'http://www.techsmith.com/jing.html'
  license :unknown    # todo: improve this machine-generated value

  app 'Jing.app'
end
