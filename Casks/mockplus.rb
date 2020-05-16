cask 'mockplus' do
  version '3.6.1.5'
  sha256 'bd1db71ad0772936f29c8dcc585666a704a844f8314362839c06519ea341bdac'

  # mockplus-static.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://mockplus-static.s3.amazonaws.com/software/macos/Mockplus_v#{version}_auto.dmg"
  appcast 'https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.mockplus.com/download/mockplus-rp&encoding=utf8&user_agent=Macintosh'
  name 'Mockplus'
  name '摩客'
  homepage 'https://www.mockplus.com/'

  app 'Mockplus Classic.app'
end
