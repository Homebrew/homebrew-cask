class Freelancy < Cask
  version :latest
  sha256 :no_check

  url 'http://dl.getfreelancy.com/Freelancy.dmg'
  homepage 'http://getfreelancy.com'

  app 'Freelancy.app'

  zap :delete => '~/Library/Application Support/freelancy'
end
