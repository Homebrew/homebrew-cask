cask :v1 => 'dropshare' do
  version :latest
  sha256 :no_check

  url 'https://getdropsha.re/sparkle/Dropshare-latest.zip'
  name 'Dropshare'
  appcast 'https://getdropsha.re/sparkle/Dropshare.xml',
          :sha256 => '1ebb0d998879640da85a1e9e26f75c6c8aaae3f294d0f15098247e4ea8a48389'
  homepage 'https://getdropsha.re/'
  license :commercial

  app 'Dropshare.app'
end
