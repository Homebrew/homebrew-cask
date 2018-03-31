cask 'metabase-app' do
  version '0.28.4.0'
  sha256 '46f08fef5054e6aa3c3d4169842d3eb7ba91817b5aa9cc16da6ba626f044dd20'

  # s3.amazonaws.com/downloads.metabase.com was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/downloads.metabase.com/v#{version.major_minor_patch}/Metabase.zip"
  appcast 'https://s3.amazonaws.com/downloads.metabase.com/appcast.xml',
          checkpoint: 'e3525f4922b4beb50a0277093978be5f97b10f3a95b6bdbae85bdc0ab93b2dd4'
  name 'Metabase'
  homepage 'https://www.metabase.com/'

  app 'Metabase.app'
end
