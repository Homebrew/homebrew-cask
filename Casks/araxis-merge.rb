cask :v1 => 'araxis-merge' do
  version '2014.4459'
  sha256 '281b2df877b5808efff7f1df6ba4a4d036d04ccdaa3a19ca87e61838dcb118fc'

  url "http://www.araxis.com/download/Merge#{version}-OSX10.9.dmg"
  homepage 'http://www.araxis.com/merge'
  license :unknown

  app 'Araxis Merge.app'
end
