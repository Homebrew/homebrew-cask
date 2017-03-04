cask 'psequel' do
  version '1.5.1'
  sha256 '46c1c392e4947ce6fe13e78883c71a596c725fb775ed4d7586d679ef3d0b7fb6'

  url "http://www.psequel.com/download?version=#{version}"
  name 'PSequel'
  homepage 'http://www.psequel.com/'

  app 'PSequel.app'
end
