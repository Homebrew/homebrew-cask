cask "strawberry" do
  version "0.0.71"
  sha256 "077fdf31a437098ca1953dff9e30aa742b2afa65155add01f53e2593ccd2ef49"

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
