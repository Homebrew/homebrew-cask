cask :v1 => 'schnapps' do
  version :latest
  sha256 :no_check

  url 'http://d15xn61otjv90c.cloudfront.net/download/Schnapps_latest.zip'
  name 'Schnapps'
  homepage 'http://schnappsformac.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Schnapps.app'
end
