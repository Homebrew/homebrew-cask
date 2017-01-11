cask 'black-light' do
  version '2.3'
  sha256 'f6f563a0d3b880da904b7e15e03f9b101dfeb6c5df6332a2dd71f62a249c7e4a'

  url "https://littoral.michelf.ca/apps/black-light/black-light-#{version}.zip"
  name 'Black Light'
  homepage 'https://michelf.ca/projects/black-light/'

  app 'Black Light.app'
end
