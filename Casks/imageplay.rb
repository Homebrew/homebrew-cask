cask 'imageplay' do
  version '6.0.0'
  sha256 '669b56528cd8c8634c1d16f0fce0c0c450004705b55566922a4062974d7df01e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/cpvrlab/ImagePlay/releases/download/#{version}/ImagePlay-#{version}.dmg"
  appcast 'https://github.com/cpvrlab/ImagePlay/releases.atom',
          checkpoint: 'fb7eee5114029e3ce1cf0e40b01f6e99393fa6dd567e6d6df5de2cad56589d3b'
  name 'ImagePlay'
  homepage 'http://imageplay.io/'
  license :gpl

  app 'ImagePlay.app'
end
