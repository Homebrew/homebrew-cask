cask 'macscale' do
  version '1.6.4'
  sha256 'bf817f7d4f1b589d3134303b2a66d1cd3076f42c8c29e5e4cd0dabd844c5d26b'

  # brinscall.com is the official download host per the vendor homepage
  url 'https://www.brinscall.com/MacScale.zip'
  appcast 'https://www.brinscall.com/updates/MacScale.xml',
          checkpoint: 'e3b0c44298fc1c149afbf4c8996fb92427ae41e4649b934ca495991b7852b856'
  name 'MacScale'
  homepage 'http://www.macscale.com'
  license :closed

  app 'MacScale.app'
end
