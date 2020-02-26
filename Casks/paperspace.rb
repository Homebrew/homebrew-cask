cask 'paperspace' do
  version '7.2.0.10'
  sha256 '06c8a22e437f43f2ffa52d64413daf37003208d027d0012df71271d0143e59d3'

  # ps-receiver.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://ps-receiver.s3.amazonaws.com/darwin/Paperspace-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.paperspace.com/download&user_agent=Mozilla/5.0%20(Macintosh%3B%20Intel%20Mac%20OS%20X%2010_14_5)'
  name 'Paperspace'
  homepage 'https://www.paperspace.com/'

  app 'Paperspace.app'
end
