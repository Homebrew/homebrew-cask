cask 'dropzone' do
  version '3.6.1'
  sha256 '6cec10bcfccbca4d92fd1739bb6a5efaa10767909dae0366c7e70c9d9715516f'

  url "https://aptonic.com/dropzone3/sparkle/Dropzone-#{version}.zip"
  appcast 'https://aptonic.com/sparkle/updates.xml',
          checkpoint: '026d16213d31d1e4529d71b01d90112b7f76b1ffaf39627279cb2d55c93c9ca7'
  name 'Dropzone'
  homepage 'https://aptonic.com/'

  app "Dropzone #{version.major}.app"
end
