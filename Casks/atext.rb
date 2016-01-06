cask 'atext' do
  version :latest
  sha256 :no_check

  url 'https://www.trankynam.com/atext/downloads/aText.dmg'
  appcast 'https://www.trankynam.com/atext/aText-Appcast.xml',
          :sha256 => '95fef6cc7509549c094b1c3a9eca4f478e57608b19d3580cef7097343ae95e67'
  name 'aText'
  homepage 'https://www.trankynam.com/atext/'
  license :commercial

  app 'aText.app'
end
