cask :v1 => 'fabric' do
  version :latest
  sha256 :no_check

  url 'https://ssl-download-crashlytics-com.s3.amazonaws.com/fabric/builds/Fabric-latest.zip'
  name 'Fabric'
  appcast 'https://ssl-download-crashlytics-com.s3.amazonaws.com/fabric/version.xml',
          :sha256 => 'da62e0832eac0f2a0a9df61ee3aeb3fcfb83547ca8ddd207ac02c6038c4be5e8'
  homepage 'https://get.fabric.io/'
  license :unknown

  app 'Fabric.app'
end
