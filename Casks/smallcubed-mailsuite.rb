cask "smallcubed-mailsuite" do
  version "2021.8.1"
  sha256 "f76468eb4826d8270ba239e8ec73f10ca25dbe57831f33944fab72a2a4404995"

  url "https://s3.amazonaws.com/media.smallcubed.com/release/scs/MailSuite_#{version}.dmg",
      verified: "s3.amazonaws.com/media.smallcubed.com/"
  name "MailSuite"
  desc "Manage Mail like a Maven"
  homepage "https://smallcubed.com/scs/"

  livecheck do
    url "https://smallcubed.com/download/scs"
    strategy :header_match
  end

  depends_on macos: ">= :big_sur"

  app "SmallCubed MailSuite.app"
end
