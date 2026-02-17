cask "strawberry" do
  version "0.0.83"
  sha256 "338472c98525564ba314bb9d15fe1dc8b46bc7d3b4148ae80644936399769c83"

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
  depends_on macos: ">= :big_sur"

  app "Strawberry.app"

  zap trash: "~/Library/Application Support/strawberry"
end
