cask "strawberry" do
  version "0.1.32"
  sha256 "ffdf40c200624c92a4476ac8b513d694ffd6f6d0c46cb67b67add211f4e58a7a"

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
