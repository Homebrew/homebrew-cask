cask :v1 => 'mirrordisplays' do
  version :latest
  sha256 :no_check

  # github.com is the official download host per the vendor homepage
  url "https://github.com/fcanas/mirror-displays/releases/download/#{version}/MirrorDisplays.zip"
  appcast 'https://github.com/fcanas/mirror-displays/releases.atom'
  name 'Mirror Displays'
  homepage 'http://www.fabiancanas.com/Projects/MirrorDisplays'
  license :gpl

  app 'MirrorDisplays.app'
end
