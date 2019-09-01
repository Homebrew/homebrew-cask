cask 'paperspace' do
  version '7.1.0.7'
  sha256 'bd1c1b7bb9f68b55bfe5ffce04e5c136be65dde231933dd2cd10e6a28fa0790b'

  # ps-receiver.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ps-receiver.s3.amazonaws.com/darwin/Paperspace-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.paperspace.com/download&user_agent=Mozilla/5.0%20(Macintosh%3B%20Intel%20Mac%20OS%20X%2010_14_5)'
  name 'Paperspace'
  homepage 'https://www.paperspace.com/'

  app 'Paperspace.app'
end
