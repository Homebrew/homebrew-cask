cask :v1 => 'psequel' do
  version '1.3.4'
  sha256 '795fa5c7999eb80f19cf7ca6532c5c134b76c42a57b78312c5db5cb9857ac413'

  url "http://www.psequel.com/download?version=#{version}"
  name 'PSequel'
  homepage 'http://www.psequel.com'
  license :closed

  app 'PSequel.app'
end
