cask :v1 => 'postbox' do
  version :latest
  sha256 :no_check

  url 'http://www.postbox-inc.com/php/download.php?a=3011m'
  homepage 'http://www.postbox-inc.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Postbox.app'
end
