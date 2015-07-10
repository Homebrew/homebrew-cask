cask :v1 => 'hackhands' do
  version '1.3.2.76'
  sha256 '3300910a9a6d141cec8abc608f5d744c28008b1b3a82cadc1c2242846daa5e11'

  url 'http://desktop.hackhands.com.s3.amazonaws.com/builds/#{version}/osx/HackHands.zip'
  name 'HackHands'
  homepage 'https://hackhands.com/desktop'
  license :gratis

  app 'HackHands.app'
end
