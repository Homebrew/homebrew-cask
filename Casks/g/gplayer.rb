cask 'gplayer' do
  version :latest
  sha256 :no_check

  url 'https://ztgg-crm-us.oss-us-west-1.aliyuncs.com/software/g-player/prod/GPlayer.dmg'
  name 'GPlayer'
  desc 'GPlayer is a media player application.'
  homepage 'https://ztgg-crm-us.oss-us-west-1.aliyuncs.com/software/g-player/prod/GPlayer.dmg'

  depends_on macos: '>= :big_sur'
  depends_on arch: :intel

  app 'GPlayer.app'

  caveats <<~EOS
    GPlayer requires Rosetta 2 to run on Apple Silicon.
    You can install Rosetta 2 by running:
      /usr/sbin/softwareupdate --install-rosetta
  EOS
end
