cask "ideamaker" do
  version "4.3.1.6452"

  on_intel do
    sha256 "A26C935CEAB65E44DF2FA15D1667E6E2E09006ACF7087A9849D2BB6CEC31E3C0"
    url "https://download.raise3d.com/ideamaker/release/#{version.major_minor_patch}/install_ideaMaker_#{version}.dmg"
  end
  on_arm do
    sha256 "2B40ADC5B8E4AB372D560E32F796C8B2931545E4D905B51DE7B5F7AF96DFB148"
    url "https://download.raise3d.com/ideamaker/release/#{version.major_minor_patch}/install_ideaMaker_#{version}-arm64.dmg"
  end

  name "ideaMaker"
  desc "FDM 3D Printing Slicer by Raise3D"
  homepage "https://www.raise3d.com/ideamaker/"

  livecheck do
    url "https://www.raise3d.com/download/"
    strategy :page_match
    regex(%r{href=.*?/install_ideaMaker_([0-9]+(\.[0-9]+)+)\.dmg}i)
  end

  app "ideaMaker.app"
end
