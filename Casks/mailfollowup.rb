class Mailfollowup < Cask
  version '1.6.2'
  sha256 'f656c121e04fac6185b24a96888613729c366275151c891258b634c71372b2af'

  url 'https://www.cs.unc.edu/~welch/MailFollowup/media/MailFollowUp_1.6.2.dmg.zip'
  homepage 'http://www.cs.unc.edu/~welch/MailFollowup/'

  nested_container 'MailFollowUp_1.6.2.dmg'
  pkg 'Install MailFollowUp.pkg'

  uninstall :quit  => 'com.apple.mail'
  zap       :files => '~/Library/Mail/Bundles/MailFollowUp.mailbundle/'
end
