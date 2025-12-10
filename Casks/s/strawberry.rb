cask "strawberry" do
  version "0.0.73"
  sha256 "1d002e801b98c8d1017b563a477aa7fb232e88d2b8b63f87a15523c97e33cc07"

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
