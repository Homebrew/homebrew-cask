cask 'healthi' do
  version '3.0.0'
  sha256 '0e0dcc3ce35e574077a5d8afb0726075e114ba42bfe497ee2d848860cb0b7c82'

  url "https://github.com/pablopunk/healthi-app/releases/download/#{version}/healthi.app.zip"
  appcast 'https://github.com/pablopunk/healthi-app/releases.atom',
          checkpoint: '18c679d0a57bd95808fa15b226187c1edd0a1f96c412377b6bfc1d10351dc932'
  name 'healthi'
  homepage 'https://github.com/pablopunk/healthi-app'

  app 'healthi.app'
end
