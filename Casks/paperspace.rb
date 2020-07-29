cask 'paperspace' do
  version '8.4.1.0'
  sha256 '6b425ada9f9a9696a1925e7fc8ccfaca4e1db2d7fc2077618cc3e58626bede34'

  # ps-receiver.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ps-receiver.s3.amazonaws.com/darwin/Paperspace-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.paperspace.com/download&user_agent=Mozilla/5.0%20(Macintosh%3B%20Intel%20Mac%20OS%20X%2010_14_5)'
  name 'Paperspace'
  homepage 'https://www.paperspace.com/'

  app 'Paperspace.app'
end
