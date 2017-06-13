cask 'neutrinometrics' do
  version :latest
  sha256 :no_check

  # s3.amazonaws.com/deskop was verified as official when first introduced to the cask
  url 'https://s3.amazonaws.com/deskop/resources/NeutrinoMetrics.dmg'
  name 'NeutrinoMetrics'
  homepage 'https://neutrinometrics.net/'

  app 'NeutrinoMetrics.app'
end
