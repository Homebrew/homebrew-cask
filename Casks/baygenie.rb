cask :v1 => 'baygenie' do
  version :latest
  sha256 :no_check

  url 'https://www.baygenie.com/Download/BayGenie4Mac.dmg'
  homepage 'http://www.baygenie.com/'
  license :unknown

  app 'BayGenie.app'
end
