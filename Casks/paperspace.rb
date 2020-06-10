cask 'paperspace' do
  version '8.4.1.0'
  sha256 '99defd065b5d9afc8838934cc7b3e84792f967aacab5f81ace3b3e0f7da8e0b0'

  # ps-receiver.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ps-receiver.s3.amazonaws.com/darwin/Paperspace-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.paperspace.com/download&user_agent=Mozilla/5.0%20(Macintosh%3B%20Intel%20Mac%20OS%20X%2010_14_5)'
  name 'Paperspace'
  homepage 'https://www.paperspace.com/'

  app 'Paperspace.app'
end
