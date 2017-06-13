cask 'psequel' do
  version '1.5.3'
  sha256 '9f3b7378e404722a0849f9124278ccef3fec6e23a068b471f8d2d692f4edefe5'

  url "http://www.psequel.com/download?version=#{version}"
  name 'PSequel'
  homepage 'http://www.psequel.com/'

  app 'PSequel.app'
end
