cask "mailsuite" do
  version "2021.8.1"
  sha256 "f76468eb4826d8270ba239e8ec73f10ca25dbe57831f33944fab72a2a4404995"

  url "https://s3.amazonaws.com/media.smallcubed.com/release/scs/MailSuite_#{version}.dmg",
      verified: "s3.amazonaws.com/media.smallcubed.com"
  name "mailsuite"
  desc "Manage Mail like a Maven"
  homepage "https://smallcubed.com/scs/"

  app "SmallCubed MailSuite.app"
end
