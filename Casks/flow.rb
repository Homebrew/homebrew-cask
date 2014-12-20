cask :v1 => 'flow' do
  version :latest
  sha256 :no_check

  url 'http://www.getflow.com/mac/download'
  homepage 'http://www.getflow.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Flow.app'
end
