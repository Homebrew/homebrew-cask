cask 'ableton-live-standard' do
  version '10.0.2'
  sha256 'a91ccd50a0c0b5712d8672cd31da9710f54d9a1b64c6bb2d3ea29709e178d272'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  name 'Ableton Live Standard'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Standard.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
