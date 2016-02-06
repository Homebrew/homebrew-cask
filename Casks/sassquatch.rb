cask 'sassquatch' do
  version '1.5.0'
  sha256 '9f9c688e473cc8fdffbee38c5d8f876726620a42dacdd6c2996faadfab714612'

  url "https://thoughtbot.github.io/sassquatch/download/v#{version}/Sassquatch.zip"
  name 'Sassquatch'
  homepage 'http://sassquatch.thoughtbot.com'
  license :commercial

  app 'Sassquatch.app'
end
