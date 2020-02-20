cask 'mockplus' do
  version '3.6.0.4'
  sha256 'e7b4cb2dca00d4b5574948d76d7114d6504b1f7dbde4e07f79bd23797161db74'

  # mockplus-static.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mockplus-static.s3.amazonaws.com/software/macos/Mockplus_v#{version}.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.mockplus.com/download/mockplus-rp&encoding=utf8&user_agent=Macintosh'
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.com/'

  app 'Mockplus.app'
end
