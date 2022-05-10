cask "jquake" do
  version "1.6.2"

  if Hardware::CPU.intel?
    sha256 "1a2ce77c84d730457b9e1309e4edc64ecd0c6021f3cfeb7ae124ab7a76eb2688"
    arch = "intel"
  else
    sha256 "c02f0e078bebdce582ee9c04d7facf530c072c682a0f85240393f93cc80b4d92"
    arch = "arm64"
  end

  url "https://fleneindre.github.io/downloads/JQuake_#{version}_mac_#{arch}.dmg",
      verified: "fleneindre.github.io/"
  name "JQuake"
  desc "Real-time earthquake monitoring software for Japan"
  homepage "https://jquake.net/"

  livecheck do
    url "https://fleneindre.github.io/version.json"
    strategy :page_match do |page|
      JSON.parse(page)["version"]
    end
  end

  app "JQuake.app"

  zap trash: [
    "~/Library/Application Support/JQuake",
    "~/Library/Saved Application State/net.jquake.java.savedState",
  ]
end
