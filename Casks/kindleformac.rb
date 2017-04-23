cask :v1 => 'kindleformac' do
  version :latest
  sha256 :no_check

  url 'https://www.amazon.co.jp/kindlemacdownload'
  name 'Kindle for Mac'
  homepage 'http://www.amazon.co.jp/kindleformac'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Kindle.app'
end
