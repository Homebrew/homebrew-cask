cask 'beam' do
  version :latest
  sha256 :no_check

  # beamai.s3.amazonaws.com was verified as official when first introduced to the cask
  url 'https://beamai.s3.amazonaws.com/app/Beam.zip'
  name 'Beam'
  homepage 'https://beam.ai/'

  app 'Beam.app'

  zap delete: [
                '~/Library/Logs/Beam',
                '~/Library/Caches/com.beyond.Beam',
                '~/Library/Application Support/com.beyond.Beam',
              ]
end
