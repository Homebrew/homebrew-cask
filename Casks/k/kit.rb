cask "kit" do
  arch arm: "arm64", intel: "x64"

  version "2.3.0"
  sha256 arm:   "f539cc08975b88903bb3581c9712eab7d1a4fe845609d55dd3e8cc1df8c95245",
         intel: "aa565e765143c470090dafd71373b85331d0d2a9d84409ee086d47b8120115b0"

  url "https://github.com/johnlindquist/kitapp/releases/download/v#{version}/Kit-macOS-#{version}-#{arch}.dmg",
      verified: "github.com/johnlindquist/kitapp/"
  name "Script Kit"
  desc "Create and run scripts"
  homepage "https://www.scriptkit.com/"

  livecheck do
    url :homepage
    regex(/href=.*?Kit[._-]macOS[._-]v?(\d+(?:\.\d+)+)[._-]#{arch}\.dmg/i)
  end

  depends_on macos: ">= :catalina"

  app "Kit.app"

  zap trash: [
    "~/.kit",
    "~/Library/Application Support/Kit",
    "~/Library/Logs/Kit",
  ]
end
