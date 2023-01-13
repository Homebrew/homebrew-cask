cask "ideamaker" do
  arch arm: "-arm64"

  version "4.3.1.6452"
  sha256 arm:   "2B40ADC5B8E4AB372D560E32F796C8B2931545E4D905B51DE7B5F7AF96DFB148",
         intel: "A26C935CEAB65E44DF2FA15D1667E6E2E09006ACF7087A9849D2BB6CEC31E3C0"

  url "https://download.raise3d.com/ideamaker/release/#{version.major_minor_patch}/install_ideaMaker_#{version}#{arch}.dmg"
  name "ideaMaker"
  desc "FDM 3D Printing Slicer by Raise3D"
  homepage "https://www.raise3d.com/ideamaker/"

  livecheck do
    url "https://www.raise3d.com/download/"
    regex(%r{href=.*?/install[._-]ideaMaker[._-]v?(\d+(?:\.\d+)+)\.dmg}i)
  end

  app "ideaMaker.app"

  zap trash: [
    "~/Library/Application Support/ideaMaker",
    "~/Library/Preferences/com.raise3d.ideaMaker.plist",
    "~/Library/Saved Application State/com.raise3d.ideaMaker.savedState",
  ]
end
