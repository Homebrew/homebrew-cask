cask "smartsvn" do
  arch arm: "aarch64", intel: "x86_64"

  version "14.5.0"
  sha256 arm:   "61c72a9bf156dff297021ff1cb179c8068fe0c5b5b9b9f659054b4f561010165",
         intel: "ae89c038b93c962cce46d1d489011cc43228d42a404032b38edf84d7613713b8"

  url "https://www.smartsvn.com/downloads/smartsvn/smartsvn-#{arch}-#{version.dots_to_underscores}.dmg"
  name "SmartSVN"
  desc "Subversion client"
  homepage "https://www.smartsvn.com/"

  livecheck do
    url "https://www.smartsvn.com/download/"
    regex(/smartsvn[._-]#{arch}[._-]v?(\d+(?:[._]\d+)+)\.dmg/i)
    strategy :page_match do |page, regex|
      page.scan(regex).map { |match| match[0].tr("_", ".") }
    end
  end

  depends_on macos: ">= :high_sierra"

  app "SmartSVN.app"

  zap trash: [
    "~/Library/Preferences/com.syntevo.smartsvn.plist",
    "~/Library/Preferences/SmartSVN",
    "~/Library/Saved Application State/com.syntevo.smartsvn.savedState",
  ]
end
