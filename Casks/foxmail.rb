cask :v1 => 'foxmail' do
  version :latest
  sha256 :no_check

  url 'http://www.foxmail.com/mac/download'
  homepage 'http://www.foxmail.com'
  license :unknown    # todo: improve this machine-generated value

  app 'Foxmail.app'
end
