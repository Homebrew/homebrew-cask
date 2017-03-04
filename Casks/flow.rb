cask 'flow' do
  version :latest
  sha256 :no_check

  url 'https://cdn.getflow.com/darwin_x64/Flow.zip'
  name 'Flow'
  homepage 'https://www.getflow.com/'

  app 'Flow.app'
end
