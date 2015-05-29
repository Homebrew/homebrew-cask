cask :v1 => 'actotracker' do
  version :latest
  sha256 :no_check

  # dropboxusercontent.com is the official download host per the vendor homepage
  url 'https://dl.dropboxusercontent.com/u/7614970/ActoTracker.zip'
  name 'ActoTracker'
  appcast 'http://onflapp.appspot.com/actotracker',
          :sha256 => '0d79b9232c6a18446e56fd91c7b65962b5486164c3a269dc5e1867b1a5354778'
  homepage 'http://onflapp.wordpress.com/actotracker'
  license :gratis

  app 'ActoTracker.app'
end
