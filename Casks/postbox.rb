cask :v1 => 'postbox' do
  version :latest
  sha256 :no_check

  url 'http://www.postbox-inc.com/php/download.php?a=3011m'
  homepage 'http://www.postbox-inc.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Postbox.app'
end
