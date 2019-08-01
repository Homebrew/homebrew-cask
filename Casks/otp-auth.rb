cask 'otp-auth' do
  version '1.0.1,455'
  sha256 'bb0fc94a4bf3f1b400f72e176a9de9f5366fd08e513c5b2870fa094d91610916'

  url "https://cooperrs.de/downloads/OTPAuth#{version.after_comma}.dmg"
  name 'OTP Auth'
  homepage 'https://cooperrs.de/otpauth_macos.html'

  app 'OTP Auth.app'
end
