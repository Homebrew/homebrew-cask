cask "post-haste" do
  version "2.7.1,2710"
  sha256 "596ca6321865adbc6ad83f401ae3058b57aecc5fd0c931a878817b071848d265"

  url "https://www.digitalrebellion.com/download/posthaste?version=#{version.csv.second}"
  name "Post Haste"
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
