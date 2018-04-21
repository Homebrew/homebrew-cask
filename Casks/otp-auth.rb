cask 'otp-auth' do
  version '1.0.0,346'
  sha256 '493343bb68124fda13905cd588eeac99a447ec3c8dc2da6b09d79a396a22a220'

  url "https://cooperrs.de/downloads/OTPAuth#{version.after_comma}.dmg"
  name 'OTP Auth'
  homepage 'https://cooperrs.de/otpauth_macos.html'

  app 'OTP Auth.app'
end
