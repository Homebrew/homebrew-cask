cask 'firebase-admin' do
  version :latest
  sha256 :no_check

  url 'https://firebaseadmin.com/download.php?os=mac'
  name 'Firebase Admin'
  homepage 'https://firebaseadmin.com/'

  app 'firebase-admin.app'
end
