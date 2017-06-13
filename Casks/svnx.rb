cask 'svnx' do
  version '2.0'
  sha256 '6096b60f95e9029942a05d9fb55093df4a19ee35d63c37fc9e95a7f8f505a960'

  url "https://subversion.assembla.com/svn/svnx/tags/svnX%20#{version}.dmg"
  appcast 'https://subversion.assembla.com/svn/svnx/rss/svnX.rss.xml',
          checkpoint: '78239a866c4285c3781e7b43ab25306a393bc4ce794ff0b2e36442834b307f32'
  name 'svnX'
  homepage 'https://subversion.assembla.com/svn/svnx/html/index.html'

  app 'svnX.app'
end
