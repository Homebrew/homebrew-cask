cask 'gn-growler-utility' do
  version '3.1'
  sha256 '5de013f7447e4c7f712951035994e759b9168525ee52b1f2e77f04b664bbf1b4'

  url "http://wafflesoftware.net/growlergn/download/GNGrowler-#{version.no_dots}.zip"
  name 'Growler for Google Notifier'
  homepage 'http://wafflesoftware.net/growlergn/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'GN Growler Utility.app'
end
