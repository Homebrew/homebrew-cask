class Hr < Cask
  version '0.4'
  sha256 '7d07901a88d449fcb352b17408d8bdbc98c849e12080f5dad5259a009dda5c4b'

  url "http://www.hrmacapp.com/releases/hr_#{version.gsub('.', '')}.zip"
  homepage 'http://www.hrmacapp.com/'

  app 'hr.app'
end
