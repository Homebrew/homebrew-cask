cask "masscode" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "3.0.0"

  if Hardware::CPU.intel?
    sha256 "ed2793d4cea25f117af8dc5dda5bd6dbd99ccdbdf9a07b15d6ca7edadc11352c"
  else
    sha256 "59bf939e2fd7b705a1b017987abbc57563d9ec767ba21d20b600ca6c0e1d1753"
  end

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "https://github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Open-source code snippets manager for developers"
  homepage "https://masscode.io/"

  livecheck do
    url :stable
    regex(/^v?(\d+(?:\.\d+)+)$/i)
  end

  app "massCode.app"
end
