cask 'fabric' do
  version :latest
  sha256 :no_check

  url 'https://ssl-download-crashlytics-com.s3.amazonaws.com/fabric/builds/Fabric-latest.zip'
  appcast 'https://ssl-download-crashlytics-com.s3.amazonaws.com/fabric/version.xml',
          :sha256 => '261546b7f617365ffa215ed1d1184f6892ce162ab035a3f31dee90058ef8fa9a'
  name 'Fabric'
  homepage 'https://get.fabric.io/'
  license :unknown # TODO: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Fabric.app'
end
