cask :v1 => 'psequel' do
  version :latest
  sha256 :no_check

  url 'http://www.psequel.com/download'
  homepage 'http://www.psequel.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'PSequel.app'
end
