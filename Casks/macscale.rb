cask 'macscale' do
  version '1.6.4'
  sha256 'bf817f7d4f1b589d3134303b2a66d1cd3076f42c8c29e5e4cd0dabd844c5d26b'

  # brinscall.com is the official download host per the vendor homepage
  url 'https://www.brinscall.com/MacScale.zip'
  appcast 'https://www.brinscall.com/updates/MacScale.xml',
          checkpoint: '9ac0360388703648f6f640fa03b06fa1d466a5202ed239b274b3d37e1759bf73'
  name 'MacScale'
  homepage 'http://www.macscale.com'
  license :closed

  app 'MacScale.app'
end
