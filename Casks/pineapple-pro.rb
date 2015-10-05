cask :v1 => 'pineapple-pro' do
  version '0.7.4'
  sha256 'ba8d623b4221cf64770fe6a843349763496fc6e44a15e1f7756047eba1b1ebc8'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/com.nathansuniversity/Pineapple/Releases/Pineapple-Pro-#{version}-Python3.5.dmg"
  name 'Pineapple'
  homepage 'http://nwhitehead.github.io/pineapple/'
  license :gpl

  app 'Pineapple-Pro.app'
end
