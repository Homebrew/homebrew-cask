cask 'dissenter-browser' do
  version '0.69.135,5d3f93a29dd49a5b1d9fc27f:5da5f347bcf95235c499fb7c'
  sha256 '854ffbd5c16e16836ec8bb210d157c38f4522c5cfc78c2f025f4db9433bac618'

  # apps.gab.com was verified as official when first introduced to the cask
  url "https://apps.gab.com/application/#{version.after_comma.before_colon}/resource/#{version.after_colon}/content"
  appcast 'https://dissenter.com/'
  name 'Dissenter'
  homepage 'https://dissenter.com/'

  auto_updates true

  app 'Dissenter Browser.app'
end
