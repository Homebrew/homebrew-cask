cask :v1 => 'swingfish' do
  version :latest
  sha256 :no_check

  url 'http://cloakedcode.com/apps/swingfish/swingfish_latest.zip'
  appcast 'http://cloakedcode.com/apps/swingfish/profileInfo.php'
  homepage 'http://cloakedcode.com/swingfish.html'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'SwingFish.app'
end
