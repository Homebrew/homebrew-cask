cask "strawberry" do
  version "0.1.11"
  sha256 "3b0c01c095df84fa8f805d13ad96b16a3bbaf8c73837281fcdf12449f875f6a8"

  url "https://strawberrybucket.com/strawberry-#{version}.dmg",
      verified: "strawberrybucket.com/"
  name "Strawberry"
  desc "AI-powered web browser"
  homepage "https://strawberrybrowser.com/"

  livecheck do
    url "https://strawberrybucket.com/latest-mac.yml"
    strategy :electron_builder
  end

  auto_updates true
  depends_on macos: :monterey

  app "Strawberry.app"

  zap trash: "~/Library/Application Support/strawberry"
end
