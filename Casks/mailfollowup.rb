class Mailfollowup < Cask
  url 'http://www.cs.unc.edu/~welch/MailFollowup/media/MailFollowUp_1.6.1.dmg.zip'
  homepage 'http://www.cs.unc.edu/~welch/MailFollowup/'
  version '1.6.1'
  sha1 'd21d8b87171d3e861b60168afc53b4d0cfe6ce09'
  nested_container 'MailFollowUp_1.6.1.dmg'
  install 'Install MailFollowUp.pkg'
  
  uninstall(
  	:quit => 'com.apple.mail',
    :files => '~/Library/Mail/Bundles/MailFollowUp.mailbundle/'
  )
  
end
