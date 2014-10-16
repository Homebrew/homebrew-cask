class Fakethunder < Cask
  version '2.0.16'
  sha256 '42ce5c0f836a17b18591816359a5a4656a7910ae3a80f83e1d1422dd995fde00'

  url 'http://martianlaboratory.com/fakethunder/fakeThunder216.zip'
  appcast 'http://martianlaboratory.com/fakethunder/update.xml',
          :sha256 => '71c38833d0f6e1fb929d6914e2cbaa3978a5155cde21353eae7a73d046b10731'
  homepage 'http://martianz.cn/fakethunder/'
  license :unknown

  app 'fakeThunder.app'
end
