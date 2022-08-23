cask "preform" do
  version "3.26.2,155_22353"
  sha256 "547cd2fd327d32d29ae90f85fa289a8a153c3ea32ad04d1f8cd877086bd11993"

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
