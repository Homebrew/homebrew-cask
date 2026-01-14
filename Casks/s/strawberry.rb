cask "strawberry" do
  version "0.0.76"
  sha256 "d8dfeca2f18cf379b2ac2af494d061d9e640332772714bfa1463ecb16b76d5d6"

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
