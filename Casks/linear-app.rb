cask 'linear-app' do
  version '1.2.4'
  sha256 '90867028f88889679ffc20cae8e85b79091cf6c1c113d99a6d643468802b801a'

  url "https://download.linear.app/darwin/Linear-darwin-x64-#{version}.zip"
  name 'Linear'
  homepage 'https://linear.app/'

  app 'Linear.app'
end
