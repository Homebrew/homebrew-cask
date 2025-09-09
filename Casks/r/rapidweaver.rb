cask "rapidweaver" do
  version "9.6.3,21146"
  sha256 "aa0c911f5f9d1bb40d8460897f8a82459a3e772234c3d640e8d939f0e799c932"

  url "https://dl.devant.io/v1/3c53887f-427a-4af7-9144-ee16178c62f4/#{version.csv.second}/RapidWeaver.zip",
      verified: "dl.devant.io/v1/3c53887f-427a-4af7-9144-ee16178c62f4/"
  name "RapidWeaver"
  desc "Web design software"
  homepage "https://www.realmacsoftware.com/rapidweaver/"

  livecheck do
    url "https://update.devant.io/v1/feed/3c53887f-427a-4af7-9144-ee16178c62f4"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "RapidWeaver.app"

  zap trash: [
    "~/Library/Application Scripts/*.com.realmacsoftware.rapidweaver*",
    "~/Library/Containers/com.realmacsoftware.rapidweaver*",
    "~/Library/Group Containers/*.com.realmacsoftware.rapidweaver*",
  ]
end
