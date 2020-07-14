cask 'amd-power-gadget' do
  version '0.6.4'
  sha256 '51ad04b1e8407f65cde123d8c5a7cf1b3dfaf560e17ec8e9f50f4652251d7ab8'

  url "https://github.com/trulyspinach/SMCAMDProcessor/releases/download/#{version}/AMD.Power.Gadget.app.zip"
  appcast 'https://github.com/trulyspinach/SMCAMDProcessor/releases.atom'
  name 'AMD Power Gadget'
  homepage 'https://github.com/trulyspinach/SMCAMDProcessor'

  app 'AMD Power Gadget.app'
end
