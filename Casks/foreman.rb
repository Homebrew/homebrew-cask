cask :v1 => 'foreman' do
  version :latest
  sha256 :no_check

  url 'http://flyingmachinestudios.com/assets/apps/foreman.zip'
  name 'Foreman'
  homepage 'http://flyingmachinestudios.com/foreman/'
  license :unknown

  app 'Foreman.app'
end
