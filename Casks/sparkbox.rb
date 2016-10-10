cask 'sparkbox' do
  version '1.2.4'
  sha256 '1b5eb4fb54de0e3151405ab3f8d643b13188a68ea4a1a2a2a2f552cf7f138b30'

  # s3.amazonaws.com/IcyBlaze-iDocument2 was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/IcyBlaze-iDocument2/Download/sparkbox_#{version}.zip"
  appcast 'http://matrix.icyblaze.com/index.php/checkupdate/p/8',
          checkpoint: '6651d8423c428326e9b213812cd24b261f97f91b74574888afde249f34ed5333'
  name 'Sparkbox'
  homepage 'http://www.icyblaze.com/sparkbox'

  depends_on macos: '>= :lion'

  app 'Sparkbox.app'
end
