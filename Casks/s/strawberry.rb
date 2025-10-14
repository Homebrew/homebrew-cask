cask "strawberry" do
  version "0.0.65"
  sha256 "6d4850cfa2856d90e9200a213ff8387d7ab173610f09688c4166c94433c1b992"

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
  depends_on macos: ">= :big_sur"

  app "Strawberry.app"

  zap trash: "~/Library/Application Support/strawberry"
end
