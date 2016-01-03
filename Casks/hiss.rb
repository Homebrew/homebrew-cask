cask 'hiss' do
  version :latest
  sha256 :no_check

  url 'http://collect3.com.au/hiss/Hiss.zip'
  appcast 'http://collect3.com.au/hiss/appcast.xml',
          :sha256 => 'de44a2a8044a10edde7cdccc8a14419ac243fb2e8b66702677e7052416fd711f'
  name 'Hiss'
  homepage 'http://collect3.com.au/hiss/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Hiss.app'
end
