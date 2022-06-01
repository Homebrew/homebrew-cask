cask "1password" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "8.7.1"

  if Hardware::CPU.intel?
    sha256 "126ecbb8d1748a329a6f6c8cd188c5e0caf1738de8ef90fe7d8fa367de637de0"
  else
    sha256 "a3423b08b814f223c2bb9c5bc5dc229e4071c7f7f298f891e4f2e9ad26e1e829"
  end

  url "https://downloads.1password.com/mac/1Password-#{version}-#{arch}.zip"
  name "1Password"
  desc "Password manager that keeps all passwords secure behind one password"
  homepage "https://1password.com/"

  livecheck do
    url "https://app-updates.agilebits.com/product_history/OPM#{version.major}"
    regex(%r{href=.*?/1Password[._-]?v?(\d+(?:.\d+)*)[._-]?\$ARCH\.zip}i)
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
