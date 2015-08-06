cask :v1 => 'imageplay' do
  version '6.0.0-beta.3'
  sha256 '7ffcea03ab6cdcd63e76d19e0b5218af80b8f68eb9e8145aaeb9a3682cea9192'

  url "https://github.com/cpvrlab/ImagePlay/releases/download/#{version}/ImagePlay.#{version}.dmg"
  appcast 'https://github.com/cpvrlab/ImagePlay/releases.atom'
  name 'ImagePlay'
  homepage 'http://imageplay.io/'
  license :gpl

  app 'ImagePlay.app'
end
