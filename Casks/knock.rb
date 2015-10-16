cask :v1 => 'knock' do
  version :latest
  sha256 :no_check

  url 'http://knocktounlock.com/download'
  name 'Knock'
  appcast 'https://knock-updates.s3.amazonaws.com/Knock.xml',
          :sha256 => 'c1976fb467cc420bf5e6d5137f01ca70baa3b758dcf8c23860c019bf6dd882c6'
  homepage 'http://knocktounlock.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Knock.app'
end
