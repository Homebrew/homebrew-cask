cask :v1 => 'sparkbox' do
  version '1.2.4'
  sha256 '1b5eb4fb54de0e3151405ab3f8d643b13188a68ea4a1a2a2a2f552cf7f138b30'

  # amazonaws.com is the official download host per the vendor homepage
  url "http://s3.amazonaws.com/IcyBlaze-iDocument2/Download/sparkbox_#{version}.zip"
  appcast 'http://matrix.icyblaze.com/index.php/checkupdate/p/8',
          :sha256 => '689d0cb42cfc174417072972c37919522a9a0f63e170424f7486c7b77d148650'
  name 'Sparkbox'
  homepage 'http://www.icyblaze.com/sparkbox'
  license :commercial

  depends_on :macos => '>= :lion'

  app 'Sparkbox.app'
end
