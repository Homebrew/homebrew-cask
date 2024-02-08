cask "manymc" do
  version "0.1.2"
  sha256 "5e230f3aca4e8b63b24b036b4175e55c2a3f49da68bdd8b05b9dc8ef823cc06d"

  url "https://github.com/MinecraftMachina/ManyMC/releases/download/v#{version}/ManyMC.zip"
  name "ManyMC"
  desc "Minecraft launcher with native arm64 support"
  homepage "https://github.com/MinecraftMachina/ManyMC"

  deprecate! date: "2024-01-07", because: :discontinued

  depends_on arch: :arm64
  depends_on macos: ">= :big_sur"

  app "ManyMC.app"

  zap trash: [
    "~/Library/Application Support/ManyMC",
    "~/Library/Preferences/org.manymc.ManyMC.plist",
    "~/Library/Preferences/org.multimc.ManyMC.plist",
    "~/Library/Preferences/org.polymc.ManyMC.plist",
    "~/Library/Saved Application State/org.manymc.ManyMC.savedState",
    "~/Library/Saved Application State/org.multimc.ManyMC.savedState",
    "~/Library/Saved Application State/org.polymc.ManyMC.savedState",
  ]
end
