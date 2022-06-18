cask "preform" do
  version "3.24.2,125_19236"
  sha256 "432c827a4c416d3e5a705e320a529874fa4f2eeefe3ee15c302ea64132df8cce"

  url "https://s3.amazonaws.com/FormlabsReleases/Release/#{version.csv.first}/PreForm_mac_#{version.csv.first}_release_releaser_#{version.csv.second}.dmg",
      verified: "s3.amazonaws.com/FormlabsReleases/"
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
