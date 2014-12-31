cask :v1 => 'cronnix' do
  version '3.0.2'
  sha256 'e61144dc7b489d581fea10bc5d04dab1c0ea590ba8a69ed5d3c4e4617f557cd2'

  url "https://cronnix.googlecode.com/files/CronniX_#{version}.app.zip"
  homepage 'https://code.google.com/p/cronnix/'
  license :gpl

  app 'CronniX.app'
end
