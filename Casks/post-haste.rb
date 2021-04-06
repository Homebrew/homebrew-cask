cask "post-haste" do
  version "2.7.0,2700"
  sha256 "491468bd56d7bc02882098e85066bdf7e9d40424a32b83770808bf2d149d5259"

  url "https://www.digitalrebellion.com/download/posthaste?version=#{version.after_comma}"
  name "Post Haste"
  homepage "https://www.digitalrebellion.com/posthaste/"

  livecheck do
    url "https://www.digitalrebellion.com/download/posthaste"
    strategy :header_match do |headers|
      match = headers["location"].match(/_((\d+)(\d+)(\d+)\d+)\.dmg/)
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
