cask "refract" do
  version "1.3.4"

  name "Refract"
  desc "Fast, open-source Minecraft launcher"
  homepage "https://refractmc.net"

  on_arm do
    url "https://github.com/RefractMC/Refract_MC/releases/download/v#{version}/Refract-macOS-arm64.dmg",
        verified: "github.com/RefractMC/Refract_MC/"
    sha256 "c009cae34e5c0f64beb81b259ce48a0407b7f19b5c6000664a0783259c3ae667"
  end

  on_intel do
    url "https://github.com/RefractMC/Refract_MC/releases/download/v#{version}/Refract-macOS-x64.dmg",
        verified: "github.com/RefractMC/Refract_MC/"
    sha256 "0181ff33c8d5788816561fbee08bdc607b15a6f970ba63bcd0faea18604edcad"
  end

  app "Refract.app"

  zap trash: [
    "~/Library/Application Support/com.refract",
    "~/Library/Preferences/com.refract.plist",
    "~/Library/Saved Application State/com.refract.savedState",
  ]
end
