cask "refine" do
  version "1.6"
  sha256 "90419c7ea9ec2b6f7ae51dece286590a8e3e80872e2ceb553851d66e073874bd"

  url "https://refine.sh/release/stable/Refine_#{version}.zip"
  name "Refine"
  desc "Grammar checker"
  homepage "https://refine.sh/"

  livecheck do
    url "https://refine.sh/release/stable/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "Refine.app"

  zap trash: [
    "~/Library/Application Support/com.runjuu.refine",
    "~/Library/Caches/com.runjuu.refine",
    "~/Library/HTTPStorages/com.runjuu.refine",
    "~/Library/Preferences/com.runjuu.refine.plist",
  ]
end
