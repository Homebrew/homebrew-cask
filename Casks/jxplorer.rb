cask :v1 => 'jxplorer' do
  version '3.3.1'
  sha256 'b51995a93203590e6690d8ad54f73cd7af1c9f2bef6219adca79c58eda71d860'

  # sourceforge.net is the official download host per the vendor homepage
  url "http://downloads.sourceforge.net/sourceforge/jxplorer/jxplorer/version%20#{version}/jxplorer-#{version}-osx.zip"
  homepage 'http://jxplorer.org'
  license :oss

  app "jxplorer-#{version}.app"
  postflight do
    system '/bin/chmod', '--', 'a+x', "#{staged_path}/jxplorer-#{version}.app/Contents/MacOS/jxplorer"
  end
end
