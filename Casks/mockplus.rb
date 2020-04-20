cask 'mockplus' do
  version '3.6.1.2'
  sha256 'e01e6904c9e23a21cdddbaa8ccc5b38943897ec4beef08093046ad9e9342cac8'

  # mockplus-static.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://mockplus-static.s3.amazonaws.com/software/macos/Mockplus_v#{version}_auto.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.mockplus.com/download/mockplus-rp&encoding=utf8&user_agent=Macintosh'
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.com/'

  app 'Mockplus.app'
end
