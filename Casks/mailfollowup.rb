cask 'mailfollowup' do
  if MacOS.version <= :tiger
    version '1.1'
    sha256 '1f345ae0c814cbdc7adad9d5b20003fbad2cdf4da0a9f9de4936fc2d2c65067d'
  elsif MacOS.version <= :leopard
    version '1.3.1'
    sha256 'ac90c2ee400ea3b8f727d46d0347893e538e17eedd97a16c94300b1cf194f1b1'
  elsif MacOS.version <= :snow_leopard
    version '1.4.5'
    sha256 '5a0f4eaac8aec89d49c8cc54ff479d7c5d94436e9b26a57fe940974cb8120ef0'
  elsif MacOS.version <= :lion
    version '1.5.4'
    sha256 '3baed14eb6e043e035f7b58670c99603d06fbf133c6f4439138abf6d313ca4ff'
  elsif MacOS.version <= :mountain_lion
    version '1.5.8'
    sha256 '37acc7af581c2d14316cdaf182eece412503b1228810247b71ccf580d70d56ce'
  elsif MacOS.version <= :mavericks
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

  zap       delete: '~/Library/Mail/Bundles/MailFollowUp.mailbundle/'
end
