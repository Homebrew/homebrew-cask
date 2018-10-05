cask 'pomello' do
  version '0.10.0'
  sha256 'b7c66b2c528d0330f1af8569e2e7fb031f36141fae41bb4377252048824215ee'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
