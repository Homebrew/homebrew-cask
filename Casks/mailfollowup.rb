cask :v1 => 'mailfollowup' do
  version '1.6.2'
  sha256 'f656c121e04fac6185b24a96888613729c366275151c891258b634c71372b2af'

  url "https://www.cs.unc.edu/~welch/MailFollowup/media/MailFollowUp_#{version}.dmg.zip"
  homepage 'http://www.cs.unc.edu/~welch/MailFollowup/'
  license :unknown

  container :nested => "MailFollowUp_#{version}.dmg"
  pkg 'Install MailFollowUp.pkg'

  uninstall :quit  => 'com.apple.mail',
            :pkgutil => [
                        'net.welchwold.mailfollowup',
                        'net.welchwold.mailfollowup.*',
                        ]
  zap       :delete => '~/Library/Mail/Bundles/MailFollowUp.mailbundle/'
end
