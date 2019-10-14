cask 'dissenter-browser' do
  version '0.68.131,5d3f93a29dd49a5b1d9fc27f:5d8287329001ac55509c6aa0'
  sha256 '540f1446253de671dae6a36ae9c50a21d035d81cd848116fb0a4f0a204b6423f'

  # apps.gab.com was verified as official when first introduced to the cask
  url "https://apps.gab.com/application/#{version.after_comma.before_colon}/resource/#{version.after_colon}/content"
  appcast 'https://dissenter.com/'
  name 'Dissenter'
  homepage 'https://dissenter.com/'

  auto_updates true

  app 'Dissenter Browser.app'
end
