cask 'ichm' do
  version '1.4.3'
  sha256 '2a00ab7fdfedd1dfea6a7a290af2eb791072812199e6d98cfdcafb9fd83e9697'

  # code.google.com/ichm was verified as official when first introduced to the cask
  url "https://storage.googleapis.com/google-code-archive-downloads/v2/code.google.com/ichm/iChm.#{version}.zip"
  name 'iChm'
  homepage 'http://www.robinlu.com/ichm'

  app 'iChm.app'
end
