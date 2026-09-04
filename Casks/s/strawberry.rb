cask "strawberry" do
  version "0.1.41"
  sha256 "447c3f1b04b0f5d0f41e860450c7be19f502125708cf145bb5e830ef7fc8746c"

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
