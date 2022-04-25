cask "manymc" do
  version "0.0.8"
  sha256 "6d319f765c470275a6954220262022a2975a9a457ff7ec613517e2743ae3912c"

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
