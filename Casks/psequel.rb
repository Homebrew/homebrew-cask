cask 'psequel' do
  version '1.4.1'
  sha256 '06bf68f7019a037c9a17a84d4f18df071afb1cfce789d828037f1961a727aae5'

  url "http://www.psequel.com/download?version=#{version}"
  name 'PSequel'
  homepage 'http://www.psequel.com'
  license :closed

  app 'PSequel.app'
end
