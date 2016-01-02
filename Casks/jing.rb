cask 'jing' do
  version :latest
  sha256 :no_check

  url 'http://download.techsmith.com/jing/mac/jing.dmg'
  appcast 'http://www.techsmith.com/redirect.asp?product=jing&ver=2.0.0&lang=enu&target=SparkleAppcast',
          :sha256 => '68723e056570ef658c3958738b98e7bf3daad7faf82a048b30fcae1da2eeeb10'
  name 'Jing'
  homepage 'https://www.techsmith.com/jing.html'
  license :gratis

  app 'Jing.app'
end
