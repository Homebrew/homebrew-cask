cask 'jet' do
  version '1.16.0'
  sha256 '392ee5660e9c436465bdcf71610482300528dc9cfaa1e9c54e391b2781d48441'

  # s3.amazonaws.com/codeship-jet-releases was verified as official when first introduced to the cask
  url "https://s3.amazonaws.com/codeship-jet-releases/#{version}/jet-darwin_amd64_#{version}.tar.gz"
  name 'Codeship Jet'
  homepage 'https://documentation.codeship.com/pro/'

  binary 'jet'
end
