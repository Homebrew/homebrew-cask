cask 'pomello' do
  version '0.10.4'
  sha256 '34e64f837f43995bc946c3e2696cd6c5f535f6721526c2ced4638f2acc9267e7'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
