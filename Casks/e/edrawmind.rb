cask "edrawmind" do
  version "12.4.1"
  sha256 "cc82d7a1f4373813576957415fa4619a0ccfd47940db989691514247781e7293"

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
