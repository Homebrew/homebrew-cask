cask 'optimage' do
  version '3.1.2'
  sha256 '53fa793665d0429bdf7a1d35188e7c94b57f46dfcb2aed47683cda5f97c4083f'

  url 'https://optimage.app/download/optimage-mac.zip'
  appcast 'https://optimage.app/appcast.xml'
  name 'Optimage'
  homepage 'https://optimage.app/'

  auto_updates true

  app 'Optimage.app'
end
