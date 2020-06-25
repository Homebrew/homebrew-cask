cask 'sipgate-softphone' do
  version :latest
  sha256 :no_check

  # sipgate-desktop-app.s3.eu-central-1.amazonaws.com was verified as official when first introduced to the cask
  url 'https://sipgate-desktop-app.s3.eu-central-1.amazonaws.com/sipgate-softphone.dmg'
  name 'sipgate softphone'
  homepage 'https://www.sipgateteam.de/softphone'

  app 'sipgate softphone.app'
end
