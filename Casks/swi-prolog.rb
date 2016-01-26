cask 'swi-prolog' do
  version '7.2.2'
  sha256 'e960065f70409995ccc846f2a4238c7fbdd5c8a23918db37d0d2e5eb2c81045f'

  url "http://www.swi-prolog.org/download/stable/bin/SWI-Prolog-#{version}.dmg"
  name 'SWI-Prolog'
  homepage 'http://www.swi-prolog.org/'
  license :oss

  app 'SWI-Prolog.app'
  binary 'SWI-Prolog.app/Contents/MacOS/swipl'
  binary 'SWI-Prolog.app/Contents/MacOS/swipl-ld'
end
