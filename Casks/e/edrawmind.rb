cask "edrawmind" do
  version "13.0.6"
  sha256 "c4c1da537e60ca1208b142a537884081ead911dfb2606755e720a532e65e445f"

  url "https://download.wondershare.com/cbs_down/edrawmind_#{version}_full5378.zip",
      verified: "download.wondershare.com/"
  name "EdrawMind"
  desc "Mind mapping software"
  homepage "https://www.edrawsoft.com/edrawmind/"

  livecheck do
    url "https://crm.wondershare.com/api/v1/support/5378/release-versions"
    strategy :json do |json|
      json["data"]&.filter_map { |item| item["version_name"] }
    end
  end

  app "EdrawMind.app"

  zap trash: [
    "~/Library/Preferences/com.edrawsoft.mindmaster.plist",
    "~/Library/Saved Application State/com.edrawsoft.mindmaster.savedState",
  ]

  caveats do
    requires_rosetta
  end
end
