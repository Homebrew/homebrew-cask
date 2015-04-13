cask :v1 => 'swi-prolog' do
  version '6.6.6'
  sha256 '9b76ac4e9ee9b5e0fe507aacb5ca7f2253e0c9f8fc7be91aeb112212001300d6'

  url "http://www.swi-prolog.org/download/stable/bin/SWI-Prolog-#{version}.dmg"
  name 'SWI-Prolog'
  homepage 'http://www.swi-prolog.org/'
  license :oss

  app 'SWI-Prolog.app'
  binary 'SWI-Prolog.app/Contents/MacOS/swipl'
  binary 'SWI-Prolog.app/Contents/MacOS/swipl-ld'
end
