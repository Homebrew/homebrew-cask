cask :v1 => 'goofy' do
  version :latest
  sha256 :no_check

  # uberspace.de is the official download host per the vendor homepage
  url 'https://dani.taurus.uberspace.de/goofyapp/download.php'
  name 'Goofy'
  appcast 'https://raw.githubusercontent.com/danielbuechele/goofy/master/update_feed.xml',
          :sha256 => '8edb213ddc1bd54ed844837fc265dc06d4b6674d9c4dd2b3364b405ff03a6c94'
  homepage 'http://www.goofyapp.com/'
  license :mit

  app 'Goofy.app'
end
