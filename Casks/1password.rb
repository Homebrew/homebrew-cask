cask "1password" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "8.7.0"

  if Hardware::CPU.intel?
    sha256 "55531520fa81282964659036eac1bb993b9bf7967ed17e4b5be3865a4e45c8c3"
  else
    sha256 "dc8a0325212cd0143a798d28bd843b2256ddfc13d7a37e1749da24f119395ff8"
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
