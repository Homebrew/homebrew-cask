cask :v1 => 'dropshare' do
  version :latest
  sha256 :no_check

  url 'https://getdropsha.re/sparkle/Dropshare-latest.zip'
  name 'Dropshare'
  appcast 'https://getdropsha.re/sparkle/Dropshare.xml',
          :sha256 => 'bb9b88f179432633594ea0d417ce7b55e8a42fe24a2106e55f1fe711473ec86a'
  homepage 'http://getdropsha.re/'
  license :commercial

  app 'Dropshare.app'
end
