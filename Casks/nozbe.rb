cask 'nozbe' do
  version '3.5.0'
  sha256 'b1ac7699dc9a8c2b89c84bcd5cbe0a1646859e9f56c8c4e0c103a91ae0c293b5'

  url "https://files.nozbe.com/#{version.no_dots}/Nozbe.app.zip"
  name 'Nozbe'
  homepage 'https://nozbe.com/'

  app 'Nozbe.app'
end
