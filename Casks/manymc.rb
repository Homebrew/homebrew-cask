cask "manymc" do
  version "0.1.1"
  sha256 "b109bb36c4b01c72d709e813720d43301b1eb3c012e755e3c9b04526381e61d3"

  url "https://github.com/MinecraftMachina/ManyMC/releases/download/v#{version}/ManyMC.zip"
  name "ManyMC"
  desc "Minecraft launcher with native arm64 support"
  homepage "https://github.com/MinecraftMachina/ManyMC"

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "ManyMC.app"

  zap trash: [
    "~/Library/Application Support/ManyMC",
    "~/Library/Preferences/org.multimc.ManyMC.plist",
    "~/Library/Saved Application State/org.multimc.ManyMC.savedState",
  ]
end
