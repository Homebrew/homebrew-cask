cask 'mockplus' do
  version '3.6.1.2'
  sha256 '95c446761fabd985a6d6288d3f1608a81bd4e249664df551d2819a9373369a7c'

  # mockplus-static.s3.amazonaws.com was verified as official when first introduced to the cask
  url "https://mockplus-static.s3.amazonaws.com/software/macos/Mockplus_v#{version}_auto.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.mockplus.com/download/mockplus-rp&encoding=utf8&user_agent=Macintosh'
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.com/'

  app 'Mockplus.app'
end
