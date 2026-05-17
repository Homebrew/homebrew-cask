cask "font-office-code-pro" do
  version "1.004"
  sha256 "9bca923d17f6c47a586d8e4567d46ccfa58fb8b8e2247b5ee2a19da1597c58f6"

  # Upstream nathco/Office-Code-Pro was deleted from GitHub on 2025-08-18.
  # Sourced from a community mirror with a byte-identical 1.004 tarball.
  url "https://github.com/case/font-office-code-pro-mirror/releases/download/#{version}/Office-Code-Pro-#{version}.tar.gz"
  name "Office Code Pro"
  homepage "https://github.com/case/font-office-code-pro-mirror"

  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro D/OTF/OfficeCodeProD-Bold.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro D/OTF/OfficeCodeProD-BoldItalic.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro D/OTF/OfficeCodeProD-Light.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro D/OTF/OfficeCodeProD-LightItalic.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro D/OTF/OfficeCodeProD-Medium.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro D/OTF/OfficeCodeProD-MediumItalic.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro D/OTF/OfficeCodeProD-Regular.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro D/OTF/OfficeCodeProD-RegularItalic.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro/OTF/OfficeCodePro-Bold.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro/OTF/OfficeCodePro-BoldItalic.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro/OTF/OfficeCodePro-Light.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro/OTF/OfficeCodePro-LightItalic.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro/OTF/OfficeCodePro-Medium.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro/OTF/OfficeCodePro-MediumItalic.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro/OTF/OfficeCodePro-Regular.otf"
  font "Office-Code-Pro-#{version}/Fonts/Office Code Pro/OTF/OfficeCodePro-RegularItalic.otf"

  # No zap stanza required
end
