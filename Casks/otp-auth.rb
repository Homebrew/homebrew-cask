cask 'otp-auth' do
  version '1.0.0,243'
  sha256 '69ad08a3eb32d422b8e86590a22db10ee448953656b29f57a239f5c57cebc785'

  url "https://cooperrs.de/downloads/OTPAuth_macOS_#{version.after_comma}.zip"
  name 'OTP Auth'
  homepage 'https://cooperrs.de/otpauth_macos.html'

  app "OTPAuth_macOS_#{version.after_comma}/OTP Auth.app"
end
