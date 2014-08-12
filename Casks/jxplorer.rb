class Jxplorer < Cask
  version '3.3.1'
  sha256 'b51995a93203590e6690d8ad54f73cd7af1c9f2bef6219adca79c58eda71d860'

  url 'https://downloads.sourceforge.net/sourceforge/jxplorer/jxplorer/version%203.3.1/jxplorer-3.3.1-osx.zip'
  homepage 'http://jxplorer.org'

  link 'jxplorer-3.3.1.app'
  after_install do
    system '/bin/chmod', '--', 'a+x', "#{destination_path}/jxplorer-3.3.1.app/Contents/MacOS/jxplorer"
  end
end
