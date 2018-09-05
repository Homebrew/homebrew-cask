cask 'cronnix' do
  version '3.0.2'
  sha256 'e61144dc7b489d581fea10bc5d04dab1c0ea590ba8a69ed5d3c4e4617f557cd2'

  # googleapis.com/google-code-archive-downloads/v2/code.google.com/cronnix was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/cronnix/CronniX_#{version}.app.zip"
  name 'CronniX'
  homepage 'https://code.google.com/archive/p/cronnix/'

  app 'CronniX.app'

  caveats do
    discontinued
  end
end
