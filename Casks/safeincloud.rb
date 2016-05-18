cask 'safeincloud' do
  version :latest
  sha256 :no_check

  url 'https://www.safe-in-cloud.com/download/SafeInCloud.app.dmg'
  name 'SafeInCloud Password Manager'
  homepage 'https://www.safe-in-cloud.com'
  license :gratis

  app 'SafeInCloud.app'
end
