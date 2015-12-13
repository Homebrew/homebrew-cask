cask :v1 => 'imageplay' do
  version '6.0.0'
  sha256 '669b56528cd8c8634c1d16f0fce0c0c450004705b55566922a4062974d7df01e'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/cpvrlab/ImagePlay/releases/download/#{version}/ImagePlay-#{version}.dmg"
  appcast 'https://github.com/cpvrlab/ImagePlay/releases.atom'
  name 'ImagePlay'
  homepage 'http://imageplay.io/'
  license :gpl

  app 'ImagePlay.app'
end
