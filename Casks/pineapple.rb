cask 'pineapple' do
  version '0.8.0'
  sha256 '9ad7c2371ff5c82be5ad236c17085261dba80f462f19fafd33de6a718c162881'

  # amazonaws.com is the official download host per the vendor homepage
  url "https://s3.amazonaws.com/com.nathansuniversity/Pineapple/Releases/Pineapple-#{version}-Python3.5.dmg"
  name 'Pineapple'
  homepage 'http://nwhitehead.github.io/pineapple/'
  license :gpl

  app 'Pineapple.app'
end
