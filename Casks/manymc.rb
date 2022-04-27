cask "manymc" do
  version "0.0.9"
  sha256 "62ae45ac6475102304b141976b730b34957c73359982ae58938546d522c12211"

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
