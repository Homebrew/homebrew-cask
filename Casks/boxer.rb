cask 'boxer' do
  version '1.4.0'
  sha256 'a75f9149612f90fa78f1016a6edef34ed600334f7170d624b083a310ae4c904e'

  # github.com/alunbestor/Boxer was verified as official when first introduced to the cask
  url "https://github.com/alunbestor/Boxer/releases/download/v#{version}/boxer-#{version}.zip"
  appcast 'https://github.com/alunbestor/Boxer/releases.atom',
          checkpoint: '290c7bdf1159dfcfa2ce3e861028d063701cd57c34e48a48e44f81f26a6b569c'
  name 'Boxer'
  homepage 'http://boxerapp.com/'

  depends_on macos: '>= :leopard'

  app 'Boxer.app'
end
