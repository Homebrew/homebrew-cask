cask :v1 => 'debookee' do
  version :latest
  sha256 :no_check

  url 'http://www.iwaxx.com/debookee/debookee.zip'
  homepage 'http://www.iwaxx.com/debookee/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Debookee.app'
end
