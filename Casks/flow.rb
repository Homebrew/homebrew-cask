cask 'flow' do
  version :latest
  sha256 :no_check

  url 'https://www.getflow.com/mac/download'
  name 'Flow'
  homepage 'https://www.getflow.com/'
  license :commercial

  app 'Flow.app'
end
