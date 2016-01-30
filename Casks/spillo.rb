cask 'spillo' do
  version '1.7'
  sha256 '094ddc32856d82163ab7b370cc595b1ddbda75c3c4573fb877313ac038b58c87'

  url "http://bananafishsoftware.com/software/spillo/app/spillo-#{version}.zip"
  appcast 'http://bananafishsoftware.com/feeds/spillo.xml',
          checkpoint: '88672b6d012108caab3144e6985bbe0760b4ce25dc4c9b93966ce414708b5c94'
  name 'Spillo'
  homepage 'http://bananafishsoftware.com/products/spillo/'
  license :commercial

  app 'Spillo.app'
end
