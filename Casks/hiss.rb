cask 'hiss' do
  version :latest
  sha256 :no_check

  url 'http://collect3.com.au/hiss/Hiss.zip'
  appcast 'http://collect3.com.au/hiss/appcast.xml',
          :checkpoint => '39b84089688241802c5e76e7fa8c38c687f407c14086f0aa4532fb9ba8bc9a02'
  name 'Hiss'
  homepage 'http://collect3.com.au/hiss/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hiss.app'
end
