class Mailfollowup < Cask
  url 'http://www.cs.unc.edu/~welch/MailFollowup/media/MailFollowUp_1.6.2.dmg.zip'
  homepage 'http://www.cs.unc.edu/~welch/MailFollowup/'
  version '1.6.2'
  sha1 '538c0441786be4a89a68ce168de2087fa9304c95'
  nested_container 'MailFollowUp_1.6.2.dmg'
  install 'Install MailFollowUp.pkg'

  uninstall(
    :quit => 'com.apple.mail',
    :files => '~/Library/Mail/Bundles/MailFollowUp.mailbundle/'
  )

end
