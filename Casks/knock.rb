cask :v1 => 'knock' do
  version :latest
  sha256 :no_check

  url 'http://knocktounlock.com/download'
  name 'Knock'
  appcast 'https://knock-updates.s3.amazonaws.com/Knock.xml',
          :sha256 => '6031780e3b3dc35d8727e4f53bb37a71e5128e7d3e3d730ac23cec27dc72ba92'
  homepage 'http://knocktounlock.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Knock.app'
end
