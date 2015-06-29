cask :v1_1 => 'colors' do
  version '1.10'
  sha256 '073f3055613b4f57e4f6a1acc8540ad8eca316e61a5202fa72f055928d83d600'

  # googlecode.com is the official download host per the vendor homepage
  url "https://tmitter.googlecode.com/files/Colors-#{version}.zip"
  name 'Colors'
  homepage 'https://github.com/13bold/Colors/'
  license :mit

  app 'Colors.app'

  caveats do
    discontinued
  end
end
