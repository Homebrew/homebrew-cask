cask 'dejalu' do
  version '1.0,192'
  sha256 '35342ef3ceda90b4e58b74bd91af9cf7172119dc16f578e443b4bdc5a808ecd0'

  url "https://d.dejalu.me/dejalu-eKTEtTljm4/dejalu-#{version.after_comma}/DejaLu-#{version.after_comma}.zip"
  appcast 'https://d.dejalu.me/dejalu-eKTEtTljm4/sparkle.xml'
  name 'DejaLu'
  homepage 'https://dejalu.me/'

  app 'DejaLu.app'
end
