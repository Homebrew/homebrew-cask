cask "post-haste" do
  version "2.6.5,2650"
  sha256 "d2c361add1422b6dda029a329b43fabe68ef3a2786d173644abfdce5ad7d1ccf"

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
