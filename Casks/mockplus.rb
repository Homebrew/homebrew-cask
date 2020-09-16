cask "mockplus" do
  version "3.6.1.6"
  sha256 "9f23c99b2e0025e6cab504538fe50da55dd6cf8478d5f4bbca920f3567344f3c"

  # mockplus-static.s3.amazonaws.com/ was verified as official when first introduced to the cask
  url "https://mockplus-static.s3.amazonaws.com/software/macos/Mockplus_v#{version}_auto.dmg"
  appcast "https://www.macupdater.net/cgi-bin/extract_text/extract_text_split_easy.cgi?url=https://www.mockplus.com/download/mockplus-rp&encoding=utf8&user_agent=Macintosh"
  name "Mockplus"
  name "摩客"
  homepage "https://www.mockplus.com/"

  app "Mockplus Classic.app"
end
