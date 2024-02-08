cask "post-haste" do
  version "2.8.2,2820"
  sha256 "b9aa07e946b48e4a9ef173a038eb111eb68197b7707c87bfcdd71e7de2206985"

  url "https://www.digitalrebellion.com/download/posthaste?version=#{version.csv.second}"
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
