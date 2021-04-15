cask "1password" do
  version "7.8"
  sha256 "dca23ac984a7f6dff42f3f2629e6fe757aae53b52d53fb52380213db2b8aedca"

  url "https://c.1password.com/dist/1P/mac#{version.major}/1Password-#{version}.zip"
  name "1Password"
  desc "Password manager that keeps all passwords secure behind one password"
  homepage "https://1password.com/"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
    strategy :page_match
    regex(%r{href=.*?/1Password-(\d+(?:\.\d+)*)\.pkg}i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/1password-beta"
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
