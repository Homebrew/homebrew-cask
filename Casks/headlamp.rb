cask "headlamp" do
  arch = Hardware::CPU.intel? ? "x64" : "arm64"

  version "0.11.0"

  if Hardware::CPU.intel?
    sha256 "54dbc17a841edb67f4ff6a3c1e89ad3489f8af5aa29af0e9186ae99d6635f7d4"
  else
    sha256 "d86fe4b981208f7e7ef779edf47aa20a33a6ae2c53849076d56a91c19636573e"
  end

  url "https://github.com/kinvolk/headlamp/releases/download/v#{version}/Headlamp-#{version}-mac-#{arch}.dmg",
      verified: "github.com/kinvolk/headlamp/"
  name "Headlamp"
  desc "UI for Kubernetes"
  homepage "https://kinvolk.github.io/headlamp"

  app "Headlamp.app"

  uninstall quit: "com.kinvolk.headlamp"

  zap trash: [
    "~/Library/Application Support/Headlamp",
    "~/Library/Logs/Headlamp",
    "~/Library/Preferences/com.kinvolk.headlamp.plist",
  ]
end
