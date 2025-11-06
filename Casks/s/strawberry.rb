cask "strawberry" do
  version "0.0.70"
  sha256 "5314b1944f4ca7efd6b08745231df4f6a4d4aaeda9f283185443b0ece917ac03"

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
