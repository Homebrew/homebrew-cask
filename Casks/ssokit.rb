cask 'ssokit' do
  version '1.0.0'
  sha256 '47781359131db65e8d8dd11086ca5e55da19105a92b956275b69d430a48d78cb'
  # github.com/rangaofei/SSokit-qmake was verified as official when first introduced to the cask
  url "https://raw.githubusercontent.com/rangaofei/SSokit-qmake/master/packages/v#{version}/SSokit.dmg"
  name 'SSokit'
  homepage 'https://github.com/rangaofei/SSokit-qmake'

  app 'SSokit.app'
end
