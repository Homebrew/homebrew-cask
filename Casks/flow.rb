cask :v1 => 'flow' do
  version :latest
  sha256 :no_check

  url 'http://www.getflow.com/mac/download'
  homepage 'http://www.getflow.com/'
  license :commercial

  app 'Flow.app'
end
