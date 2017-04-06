cask 'quickhash' do
  version '2.8.0,313'
  sha256 '29892d6dd758c5dbaf9fe3619d693bb4c5a359bc35e8a9d6a8a88954b02b5460'

  url "http://quickhash-gui.org/download/quickhash-v#{version.before_comma.dots_to_hyphens}-for-apple-mac-osx/?wpdmdl=#{version.after_comma}"
  name 'Quickhash'
  homepage 'http://quickhash-gui.org/'

  app 'QuickHash.app'
end
