cask "devtools-x" do
  version "2.15.0"
  arch arm: "arm64", intel: "x86_64"

  sha256 arm:   "c02ef8b1d77a254479aa6e59a49a5a6c828eb91fd806b605d57e008d27559d02",
         intel: "fbf6b020c9107c60231846b2e76d5e6a9bfbf0293ad0ec5bf46ec7ed889ea783"

  url "https://github.com/fosslife/devtools-x/releases/download/dev-tools_#{version}/dev-tools_#{version}_#{arch}.dmg",
      verified: "github.com/fosslife/devtools-x/"

  name "devtools-x"
  desc "Collection of offline first developer utilities available as desktop application. all in one place, cross-platform!"

  homepage "https://github.com/fosslife/devtools-x"

  depends_on macos: ">= :high_sierra"

  app "dev-tools.app"

  zap trash: "~/Library/Application Support/com.fosslife.devtoolsx"
end
