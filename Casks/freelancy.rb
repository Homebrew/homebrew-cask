cask :v1 => 'freelancy' do
  version :latest
  sha256 :no_check

  url 'http://dl.getfreelancy.com/Freelancy.dmg'
  homepage 'http://getfreelancy.com'
  license :unknown

  app 'Freelancy.app'

  zap :delete => '~/Library/Application Support/freelancy'
end
