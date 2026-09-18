cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.4.3"
  sha256 arm:   "e3874048e44baa8f6a98c6c6c450fa07a057ff0c69eb28af3259d4c5a98ca2c6",
         intel: "e4c845c85ded088f6795c551f31411fb470711f5b54416906e363854839ccc6c"

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
