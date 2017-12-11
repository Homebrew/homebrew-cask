cask 'pretzel' do
  version '0.0.15'
  sha256 '4b8363b2f113abe9bd123e55922abc9d01bc64835e5ae812832d683905e6b72b'

  url "https://download.pretzel.rocks/Pretzel-#{version}-mac.zip"
  appcast 'https://download.pretzel.rocks/latest-mac.json',
          checkpoint: '9f748cc1233eceec6f7ab0d715ac0c8f04ffb2aca3a8081a0050114af3f77711'
  name 'Pretzel'
  homepage 'https://www.pretzel.rocks/'

  app 'Pretzel.app'
end
