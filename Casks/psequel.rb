cask :v1 => 'psequel' do
  version :latest
  sha256 :no_check

  url 'http://www.psequel.com/download'
  homepage 'http://www.psequel.com'
  license :unknown    # todo: improve this machine-generated value

  app 'PSequel.app'
end
