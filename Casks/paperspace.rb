cask 'paperspace' do
  version '9.3.0.1147'
  sha256 'e824961ecd14c4780b3e89f80ca7098e28dfea188a7e86f96157ceabe02e1fde'

  # ps-receiver.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://ps-receiver.s3.amazonaws.com/prod/darwin/Paperspace-#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.paperspace.com/download&user_agent=Mozilla/5.0%20(Macintosh%3B%20Intel%20Mac%20OS%20X%2010_14_5)'
  name 'Paperspace'
  homepage 'https://www.paperspace.com/'

  app 'Paperspace.app'
end
