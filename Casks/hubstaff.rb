cask 'hubstaff' do
  version :latest
  sha256 :no_check

  url 'https://app.hubstaff.com/download/osx'
  name 'Hubstaff'
  homepage 'https://hubstaff.com/'

  app 'Hubstaff.app'
end
