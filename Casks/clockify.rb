cask 'clockify' do
  version '2.1.6'
  sha256 'adf4e56de1b57664b6045cd157032b0a07c7b9836273e6689632851b0f6c92fc'

  # drive.google.com was verified as official when first introduced to the cask
  url 'https://drive.google.com/uc?export=download&id=1kPzQGOveprS_JFlQJG8wd0IYh-trmj1o'
  name 'Clockify'
  homepage 'https://clockify.me/mac-time-tracking'

  depends_on macos: '>= 10.8'
  container nested: 'Clockify Desktop.app'

  app 'Clockify Desktop.app'
end
