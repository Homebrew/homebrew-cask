cask :v1 => 'psequel' do
  version '1.3.3'
  sha256 'b73e2eb0f7eb03704b284009182caf202617d7410328dff48d6634f45e3fb098'

  url "http://www.psequel.com/download?version=#{version}"
  name 'PSequel'
  homepage 'http://www.psequel.com'
  license :closed

  app 'PSequel.app'
end
