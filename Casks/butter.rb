cask 'butter' do
  version '0.3.0'
  sha256 '4255b581368e88ee3c802811f0824093f64bce73fb323d77b49a25700154ad84'

  url "https://github.com/harukasan/butter/releases/download/v#{version}/Butter_#{version}.dmg"
  appcast 'https://github.com/harukasan/butter/releases.atom',
          checkpoint: '131b0f9f119295f37c9edae019c39762b0bf15d39ac882814ea90e17afc4db02'
  name 'Butter'
  homepage 'https://github.com/harukasan/butter'

  app 'Butter.app'
end
