cask :v1 => 'fabric' do
  version :latest
  sha256 :no_check

  url 'https://ssl-download-crashlytics-com.s3.amazonaws.com/fabric/builds/Fabric-latest.zip'
  homepage 'https://get.fabric.io/'
  license :unknown

  app 'Fabric.app'
end
