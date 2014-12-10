cask :v1 => 'flow' do
  version :latest
  sha256 :no_check

  url 'http://www.getflow.com/mac/download'
  homepage 'http://www.getflow.com/'
  license :unknown    # todo: improve this machine-generated value

  app 'Flow.app'
end
