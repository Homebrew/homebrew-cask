cask 'mirrordisplays' do
  version :latest
  sha256 :no_check

  # github.com is the official download host per the vendor homepage
  url "https://github.com/fcanas/mirror-displays/releases/download/#{version}/MirrorDisplays.zip"
  appcast 'https://github.com/fcanas/mirror-displays/releases.atom',
          :sha256 => 'e2b3b062a7439dd4b91f437b146ea32ee3c3038492af356d966b97673ac1c04a'
  name 'Mirror Displays'
  homepage 'http://www.fabiancanas.com/Projects/MirrorDisplays'
  license :gpl

  app 'MirrorDisplays.app'
end
