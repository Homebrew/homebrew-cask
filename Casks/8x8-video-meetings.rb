cask '8x8-video-meetings' do
  version :latest
  sha256 :no_check

  # vod-updates.8x8.com/ga was verified as official when first introduced to the cask
  url 'https://vod-updates.8x8.com/ga/meet-dmg-latest.dmg'
  name '8x8 Video Meetings'
  homepage 'https://8x8.vc/'

  app '8x8 Video Meetings.app'
end
