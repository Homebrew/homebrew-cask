cask "manymc" do
  version "0.0.7"
  sha256 "3b49d0cec2fa58dfa055e138739c53654189fc44c79a829191092f4a1d42f4f8"

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
