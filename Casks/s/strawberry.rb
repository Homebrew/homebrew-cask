cask "strawberry" do
  version "0.1.40"
  sha256 "9089f3f9dc9072d03cb89237bc95af8744e948cf6340bb38e60d6f5f61d6bf66"

  url "https://strawberrybucket.com/strawberry-#{version}.dmg"
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
