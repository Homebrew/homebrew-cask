cask :v1 => 'airmail-amt' do
  version :latest
  sha256 :no_check

  url 'https://rink.hockeyapp.net/api/2/apps/af58f04487c30ac4c1e8706aa9e41c5b?format=zip'
  homepage 'http://airmailapp.com/amt/'
  license :unknown

  app 'Airmail AMT.app'
end
