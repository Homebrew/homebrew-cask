cask "edrawmind" do
  version "13.0.16"
  sha256 "943a0fe84639788e9dfadf597f5ae67337d15621d8de402edbb6980a63e76087"

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
