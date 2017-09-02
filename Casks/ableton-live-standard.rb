cask 'ableton-live-standard' do
  version '9.7.4'
  sha256 'de4dba0f837448217b7f50cd1d4eaf7aa4575940b4ddd3782f84cbe0d4116dc0'

  url "http://cdn-downloads.ableton.com/channels/#{version}/ableton_live_standard_#{version}_64.dmg"
  name 'Ableton Live Standard'
  homepage 'https://www.ableton.com/en/live/'

  app "Ableton Live #{version.major} Standard.app"

  zap delete: '~/Library/*/*[Aa]bleton*',
      rmdir:  '~/Music/Ableton/Factory Packs'
end
