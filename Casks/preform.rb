cask "preform" do
  version "3.29.0,206_36067"
  sha256 "1ab4e29bd6918e0ba2764f04acbc489b15ab92fab42c4c223b66650982b31d5a"

  url "https://downloads.formlabs.com/PreForm/Release/#{version.csv.first}/PreForm_mac_#{version.csv.first}_release_releaser_#{version.csv.second}.dmg"
  name "PreForm"
  desc "3D printing setup, management, and monitoring"
  homepage "https://formlabs.com/tools/preform/"

  livecheck do
    url "https://formlabs.com/download-preform-mac/"
    strategy :page_match do |page|
      match = page.match(%r{/PreForm_mac_(\d+(?:\.\d+)+)_release_releaser_(\d+(?:[._-]\d+)+)\.dmg}i)
      next if match.blank?

      "#{match[1]},#{match[2]}"
    end
  end

  depends_on macos: ">= :high_sierra"

  app "PreForm.app"

  zap trash: [
    "~/Library/Preferences/com.formlabs.PreForm.plist",
    "~/Library/Saved Application State/com.formlabs.PreForm.savedState",
  ]
end
