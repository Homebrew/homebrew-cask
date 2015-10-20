cask :v1 => 'psequel' do
  version :latest
  sha256 :no_check

  url "http://www.psequel.com/download?version=latest"
  name 'PSequel'
  homepage 'http://www.psequel.com'
  license :closed

  app 'PSequel.app'
end
