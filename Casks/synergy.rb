cask 'synergy' do
  version '2.0.12,b1807-50472cde'
  sha256 '41927a6a52a523797122a7d6a9c8817d09cce9966ad08118c693345f51aa41e9'

  url "https://binaries.symless.com/v#{version.before_comma}/Synergy_v#{version.before_comma}-beta_#{version.after_comma}.dmg"
  name 'Synergy'
  homepage 'https://symless.com/synergy'

  app 'Synergy.app'
end
