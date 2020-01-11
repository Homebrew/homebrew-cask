cask 'pomello' do
  version '0.10.9'
  sha256 '65d11621e89df666b7efd2f10c7f901c4b0042ec7b7e95fa4b18f4a020821142'

  url 'https://pomelloapp.com/download/mac/latest'
  appcast 'https://pomelloapp.com/download/mac'
  name 'Pomello'
  homepage 'https://pomelloapp.com/'

  app 'Pomello.app'
end
