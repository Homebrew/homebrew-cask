cask 'butter' do
  version '0.3.0'
  sha256 '4255b581368e88ee3c802811f0824093f64bce73fb323d77b49a25700154ad84'

  url "https://github.com/harukasan/butter/releases/download/v#{version}/Butter_#{version}.dmg"
  appcast 'https://github.com/harukasan/butter/releases.atom',
          checkpoint: 'd937486f468c52c3aa12d45202c99356ae85c11dd365ba06899478b6801c5556'
  name 'Butter'
  homepage 'https://github.com/harukasan/butter'

  app 'Butter.app'
end
