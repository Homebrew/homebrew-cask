cask 'pomello' do
  version '0.10.2'
  sha256 '382b1c3800fbe5105141b754c30923accdedc64bde4c4d2a7cda2f1704dfc617'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
