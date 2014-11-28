cask :v1 => 'sketch' do
  version :latest
  sha256 :no_check

  url 'http://bohemiancoding.com/static/download/sketch.zip'
  appcast 'http://www.bohemiancoding.com/sketch/appcast.xml'
  homepage 'http://www.bohemiancoding.com/sketch/'
  license :unknown

  app 'Sketch.app'
end
