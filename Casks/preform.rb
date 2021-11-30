cask "preform" do
  version "3.20.0,66_11957"
  sha256 "5b8af6d0787b1fd53180e71ec8404b8558bfb67e40ada332cbf8dae0f4aa1a46"

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
