cask 'psequel' do
  version '1.5.0'
  sha256 '79052e701eebb63bd8b89c307da4b7e58bc286a7a9d7ceee00f8acbb2aee10fd'

  url "http://www.psequel.com/download?version=#{version}"
  name 'PSequel'
  homepage 'http://www.psequel.com'

  app 'PSequel.app'
end
