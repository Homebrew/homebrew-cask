cask 'movist-pro' do
  version :latest
  sha256 :no_check

  # d2uukrxj8lf22z.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d2uukrxj8lf22z.cloudfront.net/MovistPro.app.zip'
  name 'Movist Pro'
  homepage 'https://movistprime.com/kr/'
  license :commercial

  app 'Movist Pro.app'
end
