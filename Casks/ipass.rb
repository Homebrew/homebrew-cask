cask 'ipass' do
  version '2.7.1'
  sha256 '2b8b4f265a19d6fa47af3fa1fa99ea9628227e1eea66ee00a7a590b938c60c9e'

  # d18uyicgt51j26.cloudfront.net was verified as official when first introduced to the cask
  url 'https://d18uyicgt51j26.cloudfront.net/packages/iPass_Mac.dmg'
  name 'iPass'
  homepage 'https://www.ipass.com/'

  auto_updates true

  pkg 'iPass.pkg'

  uninstall delete: '/Applications/iPass.app'
end
