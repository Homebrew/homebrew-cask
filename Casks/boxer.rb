cask 'boxer' do
  version '1.4.0'
  sha256 'a75f9149612f90fa78f1016a6edef34ed600334f7170d624b083a310ae4c904e'

  # github.com/alunbestor/Boxer was verified as official when first introduced to the cask
  url "https://github.com/alunbestor/Boxer/releases/download/v#{version}/boxer-#{version}.zip"
  appcast 'http://boxerapp.com/appcast',
          checkpoint: 'a8d19705429ced354ead57abc45060f504368fd7def6038fb2f54e77a8a22c21'
  name 'Boxer'
  homepage 'http://boxerapp.com/'

  depends_on macos: '>= :leopard'

  app 'Boxer.app'
end
