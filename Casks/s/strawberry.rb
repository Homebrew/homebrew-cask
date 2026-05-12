cask "strawberry" do
  version "0.0.102"
  sha256 "b73cf77a7367cc6891cee162ddcfcb2c73c0a3ee5110928f472b380f56b6f8a0"

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
