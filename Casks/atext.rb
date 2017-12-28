cask 'atext' do
  version '2.22.2'
  sha256 '287fc6498430e88cf48cae0ac15a881f3a6681f775a075b9260b843334338fd8'

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml',
          checkpoint: '1ac415d196ae88529c955a7682ec2b2065eb5315492d7b0eb0eed3d5d055e34b'
  name 'aText'
  homepage 'https://www.trankynam.com/atext/'

  app 'aText.app'
end
