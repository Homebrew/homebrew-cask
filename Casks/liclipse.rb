cask 'liclipse' do
  version '6.2.0,ua5e9iiglndk16n'
  sha256 '1fd1f0c4692c16f62b97decfd7ce872b8826805e9d87ea7c922820a870edd967'

  # mediafire.com/file/ was verified as official when first introduced to the cask
  url "https://www.mediafire.com/file/#{version.after_comma}/liclipse_#{version.before_comma}_macosx.cocoa.x86_64.dmg"
  appcast 'https://www.liclipse.com/download.html'
  name 'LiClipse'
  homepage 'https://www.liclipse.com/'

  app 'LiClipse.app'
end
