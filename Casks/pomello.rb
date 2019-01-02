cask 'pomello' do
  version '0.10.3'
  sha256 'fd8c11fec405f79c777386ce9f612c3bcc771f63f78266207cbfc5a0192f424d'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
