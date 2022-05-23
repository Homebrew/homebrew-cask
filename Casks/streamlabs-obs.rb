cask "streamlabs-obs" do
  version "1.8.4"
  sha256 "b47fea26b5283347198955597bd722a9f3119ac078907eafb035b4fdf95ce232"

  url "https://slobs-cdn.streamlabs.com/Streamlabs+Desktop-#{version}.dmg"
  name "Streamlabs Desktop"
  desc "All-in-one live streaming software"
  homepage "https://streamlabs.com/"

  livecheck do
    url "https://slobs-cdn.streamlabs.com/desktop-latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :mojave"

  app "Streamlabs Desktop.app"

  zap trash: [
    "~/Library/Application Support/slobs-client",
    "~/Library/Application Support/slobs-plugins",
  ]
end
