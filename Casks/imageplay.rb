cask :v1 => 'imageplay' do
  version '6.0.0-beta.4'
  sha256 'e15443e31a8199153b483422c7f43c9eea17f261cefc3fff38748169caa8269b'

  # github.com is the official download host per the vendor homepage
  url "https://github.com/cpvrlab/ImagePlay/releases/download/#{version}/ImagePlay.#{version}.dmg"
  appcast 'https://github.com/cpvrlab/ImagePlay/releases.atom'
  name 'ImagePlay'
  homepage 'http://imageplay.io/'
  license :gpl

  app 'ImagePlay.app'
end
