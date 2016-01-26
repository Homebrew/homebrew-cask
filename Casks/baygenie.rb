cask 'baygenie' do
  version :latest
  sha256 :no_check

  url 'https://www.baygenie.com/Download/BayGenie4Mac.dmg'
  name 'BayGenie'
  homepage 'http://www.baygenie.com/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'BayGenie.app'
end
