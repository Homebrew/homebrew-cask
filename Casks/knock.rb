cask 'knock' do
  version '2.1.5'
  sha256 '6dc272cc18e44ef06e27c4a7fc5a37f231904f3a436fdfd9e455c74829117426'

  # amazonaws.com is the official download host per the vendor homepage
  url 'http://knock-updates.s3.amazonaws.com/Knock.zip'
  appcast 'https://knock-updates.s3.amazonaws.com/Knock.xml',
          :sha256 => '45d49b2a76c79ef7838798a975f9322135c7d3ffaf9af13c271fa597aee8b2f1'
  name 'Knock'
  homepage 'http://knocktounlock.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Knock.app'
end
