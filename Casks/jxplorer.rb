cask 'jxplorer' do
  version '3.3.1'
  sha256 'b51995a93203590e6690d8ad54f73cd7af1c9f2bef6219adca79c58eda71d860'

  # sourceforge.net/jxplorer was verified as official when first introduced to the cask
  url "https://downloads.sourceforge.net/jxplorer/jxplorer/version%20#{version}/jxplorer-#{version}-osx.zip"
  appcast 'https://sourceforge.net/projects/jxplorer/rss?path=/jxplorer',
          checkpoint: '678e62f7056c41d31dfb73b2b60039755a4759e842cd71fabddc92efe3262ca3'
  name 'JXplorer'
  homepage 'http://jxplorer.org/'

  app "jxplorer-#{version}.app"

  postflight do
    set_permissions "#{appdir}/jxplorer-#{version}.app/Contents/MacOS/jxplorer", 'a+x'
  end
end
