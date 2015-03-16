cask :v1 => 'colors' do
  version '1.10'
  sha256 '073f3055613b4f57e4f6a1acc8540ad8eca316e61a5202fa72f055928d83d600'

  # googlecode.com is the official download host per the vendor homepage
  url "http://tmitter.googlecode.com/files/Colors-#{version}.zip"
  homepage 'https://github.com/13bold/Colors/'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Colors.app'
end
