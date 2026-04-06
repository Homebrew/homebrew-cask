cask "strawberry" do
  version "0.0.97"
  sha256 "58b879db94961a0f799cf44e4d9eb868fa693ccdc00238096a52749137b346f8"

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
  depends_on macos: ">= :monterey"

  app "Strawberry.app"

  zap trash: "~/Library/Application Support/strawberry"
end
