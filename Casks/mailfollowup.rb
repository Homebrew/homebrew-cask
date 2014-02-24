class Mailfollowup < Cask
  url 'http://www.cs.unc.edu/~welch/MailFollowup/media/MailFollowUp_1.6.2.dmg.zip'
  homepage 'http://www.cs.unc.edu/~welch/MailFollowup/'
  version '1.6.2'
  sha256 'f656c121e04fac6185b24a96888613729c366275151c891258b634c71372b2af'
  nested_container 'MailFollowUp_1.6.2.dmg'
  install 'Install MailFollowUp.pkg'

  uninstall(
    :quit => 'com.apple.mail',
    :files => '~/Library/Mail/Bundles/MailFollowUp.mailbundle/'
  )

end
