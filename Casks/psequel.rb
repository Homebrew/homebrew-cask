cask 'psequel' do
  version '1.4.0'
  sha256 '39b47595ba58f1519469cfcc223989d262d6439d171d7e900c928a6f28449b74'

  url "http://www.psequel.com/download?version=#{version}"
  name 'PSequel'
  homepage 'http://www.psequel.com'
  license :closed

  app 'PSequel.app'
end
