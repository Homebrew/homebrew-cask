cask :v1 => 'debookee' do
  version :latest
  sha256 :no_check

  url 'http://www.iwaxx.com/debookee/debookee.zip'
  homepage 'http://www.iwaxx.com/debookee/'
  license :unknown    # todo: improve this machine-generated value

  app 'Debookee.app'
end
