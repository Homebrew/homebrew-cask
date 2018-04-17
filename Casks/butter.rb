cask 'butter' do
  version '0.3.0'
  sha256 '4255b581368e88ee3c802811f0824093f64bce73fb323d77b49a25700154ad84'

  url "https://github.com/harukasan/butter/releases/download/v#{version}/Butter_#{version}.dmg"
  appcast 'https://github.com/harukasan/butter/releases.atom',
          checkpoint: '0146c9df120416cadb511007639d7a750b56dfe060b590bcaaaa49fb6c14b6c2'
  name 'Butter'
  homepage 'https://github.com/harukasan/butter'

  app 'Butter.app'
end
