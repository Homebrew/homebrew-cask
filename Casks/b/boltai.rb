cask "boltai" do
  version "2.8.4"
  sha256 "c52cee1699c1c39b1d37c915e45c0ddab2f2976b338b4a7d736a79beb0663e69"

  url "https://updates.boltai.com/dmg/BoltAI-#{version}.dmg"
  name "BoltAI 2"
  desc "AI chat client"
  homepage "https://boltai.com/"

  livecheck do
    url "https://updates.boltai.com/appcast.xml"
    strategy :sparkle, &:short_version
  end

  auto_updates true
  depends_on macos: ">= :ventura"

  app "BoltAI #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/co.podzim.boltai-mobile",
    "~/Library/Containers/co.podzim.boltai-mobile",
    "~/Library/Saved Application State/co.podzim.boltai-mobile.savedState",
  ]
end
