cask "post-haste" do
  version "2.8.3,2832"
  sha256 "a3a2b9f73f99a880b3155fa24e3b0ce6a2fee32d822dcfb2e80a135c29f2b64e"

  url "https://download.digitalrebellion.com/posthaste/Post_Haste_for_Mac_#{version.csv.second}.dmg"
  name "Post Haste"
  desc "Digital media project management tool"
  homepage "https://www.digitalrebellion.com/posthaste/"

  livecheck do
    url "https://www.digitalrebellion.com/download/posthaste"
    strategy :header_match do |headers|
      match = headers["location"].match(/_((\d+)(\d+)(\d+)\d+)\.dmg/)
      next if match.blank?

      "#{match[2]}.#{match[3]}.#{match[4]},#{match[1]}"
    end
  end

  app "Post Haste.app"

  zap trash: [
        "~/Library/Application Support/Digital Rebellion/Post Haste/",
        "~/Library/Preferences/com.digitalrebellion.PostHaste.plist",
      ],
      rmdir: "~/Library/Application Support/Digital Rebellion"
end
