cask :v1 => 'shimo' do
  version :latest
  sha256 :no_check

  url 'http://www.chungwasoft.com/files/Shimo_latest.zip'
  appcast 'http://www.chungwasoft.com/library/appcasts/Shimo3/shimocast.php'
  homepage 'http://www.chungwasoft.com/shimo/'
  license :unknown    # todo: improve this machine-generated value

  app 'Shimo.app'
end
