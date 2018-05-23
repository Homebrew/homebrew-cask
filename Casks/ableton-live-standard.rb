cask 'ableton-live-standard' do
  version '10.0.1'
  sha256 '82bb60b0be9cf922a54261e20a2fd06d90943e3442dce28b455e181694cda64c'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  name 'Ableton Live Standard'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Standard.app"

  zap trash: '~/Library/*/*[Aa]bleton*',
      rmdir: '~/Music/Ableton/Factory Packs'
end
