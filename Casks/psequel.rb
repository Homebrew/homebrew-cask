cask :v1 => 'psequel' do
  version '1.1.2'
  sha256 '19c2721002ed35e899bfdc9fd1a52f1d8cbc42e869b407eaf536ce82a32763f5'

  url "http://www.psequel.com/download?version=#{version}"
  name 'PSequel'
  homepage 'http://www.psequel.com'
  license :closed

  app 'PSequel.app'
end
