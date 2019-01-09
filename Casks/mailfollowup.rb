cask 'mailfollowup' do
  if MacOS.version <= :mavericks
    version '1.6.5'
    sha256 '45d8a2f1791a517e40bd63ecbc67afc6dae70287f6e04f810b452b2e90097f42'
  elsif MacOS.version <= :yosemite
    version '1.7.3'
    sha256 '1fe25c718b71e7a8b164058c5638c7e0ffc4a24c35a97daf53221c2543593fd4'
  elsif MacOS.version <= :el_capitan
    version '1.8'
    sha256 'b6bec94f71453688adaed58ec30ee98924456f3da6b6d1a22118dd838e49ebe1'
  else
    version '1.8.4'
    sha256 '77e48cbb5d9b4a1909efd15ecc25f370a392fdee94361a402f0dfa9b5ddd0de7'
  end

  url "https://www.cs.unc.edu/~welch/MailFollowup/media/MailFollowUp_#{version}.dmg.zip"
  name 'MailFollowUp'
  homepage 'https://www.cs.unc.edu/~welch/MailFollowup/'

  pkg 'Install MailFollowUp.pkg'

  uninstall quit:    'com.apple.mail',
            pkgutil: [
                       'net.welchwold.mailfollowup',
                       'net.welchwold.mailfollowup.*',
                     ]

  zap trash: '~/Library/Mail/Bundles/MailFollowUp.mailbundle/'
end
