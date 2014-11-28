cask :v1 => 'gyazo' do
  version '2.0'
  sha256 '41242a421ee0c2b467ac0ff7fa1baa895c824e940bc5aee92a4ec2bf8e204eb3'

  url "https://gyazo.s3.amazonaws.com/setup/Gyazo_#{version}.dmg"
  homepage 'https://gyazo.com/'
  license :unknown

  app 'Gyazo.app'
  app 'Gyazo GIF.app'
end
