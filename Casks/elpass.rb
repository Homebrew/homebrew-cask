cask 'elpass' do
  version :latest
  sha256 :no_check

  url 'https://elpass.app/macos/Elpass-latest.zip'
  name 'Elpass'
  homepage 'https://elpass.app/'

  app 'Elpass.app'
end
