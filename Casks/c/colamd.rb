cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.7.6"
  sha256 arm:   "18132f223c2dddf5f98e592b559b2b551526fc8a93f8b0e8d03b7dd69cc743f1",
         intel: "e1dbc71ce66a903ba6c163ba5c6f8dfd65a32e169493d8f5a5a6e05c7821a54a"

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
