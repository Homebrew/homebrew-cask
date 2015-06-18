cask :v1 => 'freelancy' do
  version :latest
  sha256 :no_check

  url 'http://dl.getfreelancy.com/Freelancy.dmg'
  name 'Freelancy'
  homepage 'http://getfreelancy.com'
  license :unknown    # todo: change license and remove this comment; ':unknown' is a machine-generated placeholder

  app 'Freelancy.app'

  zap :delete => '~/Library/Application Support/freelancy'
end
