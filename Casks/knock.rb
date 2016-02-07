cask 'knock' do
  version '2.1.5'
  sha256 '7a5461753219091e7c18a8be998a23e675d53b3ec117b4c810ebfb68209b6620'

  # amazonaws.com is the official download host per the vendor homepage
  url 'https://knock-updates.s3.amazonaws.com/Knock.zip'
  appcast 'https://knock-updates.s3.amazonaws.com/Knock.xml',
          checkpoint: 'e19009ff38ba79bfb9545e71173e4712a98ff4f68c06d539dd8cc64b7afa91e8'
  name 'Knock'
  homepage 'http://knocktounlock.com'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Knock.app'
end
