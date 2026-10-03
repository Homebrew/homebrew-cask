cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.7.3"
  sha256 arm:   "801ebe388596a7c5092b1ac54eb5e3dff38f6d15dd1a667b49972b2d7c5be9e2",
         intel: "5c426b1508dbcaa7a95098e2b839e207c52396c09e2a942190c888b25cd6c209"

  url "https://github.com/marswaveai/ColaMD/releases/download/v#{version}/ColaMD-#{version}-#{arch}.dmg"
  name "ColaMD"
  desc "Markdown editor"
  homepage "https://colamd.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "ColaMD.app"

  zap trash: [
    "~/.colamd",
    "~/Library/Application Support/colamd",
    "~/Library/Preferences/ai.marswave.colamd.plist",
  ]
end
