cask "strawberry" do
  version "0.0.75"
  sha256 "aede8d30626561b74fd95f19b5cf12c0be84386d29e6df6223b89da8d23edb88"

  url "https://strawberrybucket.xyz/strawberry-#{version}.dmg",
      verified: "strawberrybucket.xyz/"
  name "Strawberry"
  desc "AI-powered web browser"
  homepage "https://strawberrybrowser.com/"

  livecheck do
    url "https://strawberrybucket.xyz/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: ">= :monterey"

  app "Strawberry.app"

  zap trash: "~/Library/Application Support/strawberry"
end
