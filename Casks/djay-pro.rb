cask 'djay-pro' do
  version '1.2.1,201510081831'
  sha256 '08c9cf2961834eb7dd4605d9d7ada7461f8bf9af7b80e48d71f13b1bd580a8ca'

  url "http://download.algoriddim.com/djay/#{version.after_comma}/djay_Pro_#{version.before_comma}.zip"
  appcast 'https://www.algoriddim.com/djay-pro-mac/releasenotes/appcast',
          checkpoint: 'ddd4abff880586ae04e436e7eee091e5fd459938e81ac6af89bb2c18d05c15cf'
  name 'Algoriddim djay Pro'
  homepage 'http://algoriddim.com/djay-mac'
  license :commercial

  app 'djay Pro.app'
end
