cask 'foreman' do
  version :latest
  sha256 :no_check

  url 'http://flyingmachinestudios.com/assets/apps/foreman.zip'
  name 'Foreman'
  homepage 'http://flyingmachinestudios.com/foreman/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Foreman.app'
end
