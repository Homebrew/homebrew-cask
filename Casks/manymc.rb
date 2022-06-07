cask "manymc" do
  version "0.1.0"
  sha256 "7426ab9bbc6a24dc5bb991d6bc5a982bdc56b229be52fe4423d64b5140b3ce84"

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
