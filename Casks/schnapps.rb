cask :v1 => 'schnapps' do
  version '1.0'
  sha256 '93beb5d29311f692e1eb1b2843d0ae8cce8a8b7beb200bea50d021f163190cc5'

  url "http://d15xn61otjv90c.cloudfront.net/download/Schnapps_v#{version}.zip"
  name 'Schnapps'
  homepage 'http://schnappsformac.com/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Schnapps.app'
end
