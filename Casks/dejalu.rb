cask 'dejalu' do
  version '1.0,213'
  sha256 '527901fbaf9782caf5cded4132f856fa3922c5cba67323f4b29a9d32bcdc1c83'

  url "https://d.dejalu.me/dejalu-eKTEtTljm4/dejalu-#{version.after_comma}/DejaLu-#{version.after_comma}.zip"
  appcast 'https://d.dejalu.me/dejalu-eKTEtTljm4/sparkle.xml'
  name 'DejaLu'
  homepage 'https://dejalu.me/'

  app 'DejaLu.app'
end
