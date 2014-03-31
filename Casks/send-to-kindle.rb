class SendToKindle < Cask
  url 'http://s3.amazonaws.com/sendtokindle/SendToKindleForMac-installer-v1.0.0.218.pkg'
  homepage 'http://www.amazon.com/gp/sendtokindle/mac'
  version '1.0.0.218'
  sha256 '9c3a9eca8fe9f09ff43dfb4132a8be163ef517008979075df3d947699c421494'
  install 'SendToKindleForMac-installer-v1.0.0.218.pkg'
end
