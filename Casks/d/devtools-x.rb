cask "devtools-x" do
  arch intel: "x64"

  version "2.15.0"
  sha256 "fbf6b020c9107c60231846b2e76d5e6a9bfbf0293ad0ec5bf46ec7ed889ea783"

  url "https://github.com/fosslife/devtools-x/releases/download/devtoolsx-v#{version}/dev-tools_#{version}_x64.dmg"
  name "devtools-x"
  desc "Collection of offline first developer utilities available as desktop application"
  homepage "https://github.com/fosslife/devtools-x"

  depends_on macos: ">= :high_sierra"

  app "dev-tools.app"

  zap trash: "~/Library/Application Support/com.fosslife.devtoolsx"
end
