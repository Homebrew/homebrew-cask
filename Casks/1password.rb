cask "1password" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "8.7.3"

  if Hardware::CPU.intel?
    sha256 "216944843bf357c5799b3335dd5cf35381eadef95dd9d1bfa7650374fcd0667e"
  else
    sha256 "a147c2878e96818b0e16785daec32821d835a9004bbbd287076dddf8dcdc9114"
  end

  url "https://downloads.1password.com/mac/1Password-#{version}-#{arch}.zip"
  name "1Password"
  desc "Password manager that keeps all passwords secure behind one password"
  homepage "https://1password.com/"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
    regex(%r{href=.*?/1Password[._-]?v?(\d+(?:.\d+)*)(?:[._-]?\d[._-]?PRODUCTION)?[._-]?\$ARCH\.zip}i)
  end

  auto_updates true
  conflicts_with cask: "homebrew/cask-versions/1password-beta"
  depends_on macos: ">= :high_sierra"

  app "1Password.app"

  zap trash: [
    "~/Library/Application Scripts/2BUA8C4S2C.com.1password.browser-helper",
    "~/Library/Application Scripts/2BUA8C4S2C.com.1password.1password",
    "~/Library/Containers/2BUA8C4S2C.com.1password.browser-helper",
    "~/Library/Containers/com.1password.1password",
    "~/Library/Group Containers/2BUA8C4S2C.com.1password",
  ]
end
