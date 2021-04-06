cask "ipepresenter" do
  version "7.2.23"
  sha256 "92557bb564e8a14f40a4b84ad5ec57b2d6a39e59467ec0a46bbc5a5725a57ba9"

  url "https://dl.bintray.com/otfried/generic/ipe/#{version.major_minor}/ipepresenter-#{version}-mac.dmg",
      verified: "bintray.com/otfried/"
  name "IpePresenter"
  desc "Make presentations from PDFs"
  homepage "https://ipepresenter.otfried.org/"

  livecheck do
    url :homepage
    strategy :page_match
    regex(%r{href=.*?/ipepresenter-(\d+(?:\.\d+)*)-mac\.dmg}i)
  end

  depends_on macos: ">= :yosemite"

  app "IpePresenter.app"
end
