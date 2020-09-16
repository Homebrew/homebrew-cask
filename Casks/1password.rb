cask "1password" do
  version "7.6"
  sha256 "c75ac1e661950d48766e78f716b642d4e1d963e588af9fd09095dcad6cf52d55"

  url "https://c.1password.com/dist/1P/mac#{version.major}/1Password-#{version}.zip"
  appcast "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
  name "1Password"
  desc "Password manager that keeps all passwords secure behind one password"
  homepage "https://1password.com/"

  auto_updates true
  conflicts_with cask: "1password-beta"
  depends_on macos: ">= :high_sierra"

  app "1Password #{version.major}.app"

  zap trash: [
    "~/Library/Application Scripts/*.agilebits.onepassword*",
    "~/Library/Containers/*.agilebits.onepassword*",
    "~/Library/Group Containers/2BUA8C4S2C.com.agilebits",
    "~/Library/Logs/1Password",
    "~/Library/Preferences/com.agilebits.onepassword*",
  ]
end
