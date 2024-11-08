cask "neohtop" do
  arch arm: "silicon", intel: "intel"
  platform = on_arch_conditional arm: "aarch64", intel: "x64"

  version "1.0.8"
  sha256 arm:   "7341b74bec0d28a2ab1224d89975143eb241728e9ff436c79bc3ed5a70eb2501",
         intel: "be1b84a66e8baf0ff37c003f6221fea131b5ba50ab56c3f424e047a729a4c5f5"

  url "https://github.com/Abdenasser/neohtop/releases/download/v#{version}/#{arch}-NeoHtop_#{version}_#{platform}.dmg",
      verified: "github.com/Abdenasser/neohtop/"
  name "NeoHtop"
  desc "Htop on steroids"
  homepage "https://abdenasser.github.io/neohtop/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :high_sierra"

  app "NeoHtop.app"

  zap trash: [
    "~/Library/Caches/com.neohtop.dev",
    "~/Library/Saved Application State/com.neohtop.dev.savedState",
    "~/Library/WebKit/com.neohtop.dev",
  ]
end
