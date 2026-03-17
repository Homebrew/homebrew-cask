cask "strawberry" do
  version "0.0.93"
  sha256 "0628cbe4247ed84a0ff5726d700638606175a02059ba12a1e5b5de915292c821"

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
