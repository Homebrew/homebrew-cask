cask 'paperspace' do
  version '9.2.2.1040'
  sha256 'ae4999785de90c465638772266b1a401f11db4c2ec6aa0472611ac9265bcfe95'

  # ps-receiver.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ps-receiver.s3.amazonaws.com/prod/darwin/Paperspace-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.paperspace.com/download&user_agent=Mozilla/5.0%20(Macintosh%3B%20Intel%20Mac%20OS%20X%2010_14_5)'
  name 'Paperspace'
  homepage 'https://www.paperspace.com/'

  app 'Paperspace.app'
end
