cask :v1 => 'noun-project' do
  version '1.0.4'
  sha256 '4b5024b3e425d8530a1be7b52e014b11b8d9ece5c6443afb31e7dfb454747d53'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/nounproject/mac/Noun-Project-#{version}.dmg"
  name 'Noun Project'
  appcast 'https://thenounproject.com/for-mac/feed/',
          :sha256 => 'f70a95f1158dd41211d4866577c33ad1959ad8ce76c2ed093ed767596620c5c4'
  homepage 'https://thenounproject.com'
  license :commercial

  app 'Noun Project.app'

  depends_on :macos => '>= 10.9'
end
