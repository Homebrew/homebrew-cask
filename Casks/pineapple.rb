cask 'pineapple' do
  version '0.8.0'
  sha256 '9ad7c2371ff5c82be5ad236c17085261dba80f462f19fafd33de6a718c162881'

  # amazonaws.com/com.nathansuniversity/Pineapple was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/com.nathansuniversity/Pineapple/Releases/Pineapple-#{version}-Python3.5.dmg"
  name 'Pineapple'
  homepage 'https://nwhitehead.github.io/pineapple/'

  app 'Pineapple.app'
end
