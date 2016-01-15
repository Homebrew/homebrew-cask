cask 'smaller' do
  version :latest
  sha256 :no_check

  url 'http://smallerapp.com/download/Smaller.zip'
  appcast 'http://smallerapp.com/up/updates.xml',
          :checkpoint => 'f3dcdd9aa67653c819d149e3a50efbdf5752a4614056b2bef415ba32314eb4ee'
  name 'Smaller'
  homepage 'http://smallerapp.com/'
  license :commercial

  app 'Smaller.app'
end
