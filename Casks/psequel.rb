cask :v1 => 'psequel' do
  version '1.3.0'
  sha256 'ff60dad8a662bd8313e4b0c09609179ac4e30c3d28b8d066f28056703266a3a5'

  url "http://www.psequel.com/download?version=#{version}"
  name 'PSequel'
  homepage 'http://www.psequel.com'
  license :closed

  app 'PSequel.app'
end
