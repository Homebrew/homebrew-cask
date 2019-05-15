cask 'black-light' do
  version '2.3.5'
  sha256 'de5f2f3e6748329b31375d5b5692a4988a8635aab5653f7c0dbdbd3607c1cd5e'

  url "https://littoral.michelf.ca/apps/black-light/black-light-#{version}.zip"
  name 'Black Light'
  homepage 'https://michelf.ca/projects/black-light/'

  app 'Black Light.app'
end
