cask 'fabric' do
  version :latest
  sha256 :no_check

  # ssl-download-crashlytics-com.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://ssl-download-crashlytics-com.s3.amazonaws.com/fabric/builds/Fabric-latest.zip'
  name 'Fabric'
  homepage 'https://fabric.io'
  license :gratis

  app 'Fabric.app'
end
