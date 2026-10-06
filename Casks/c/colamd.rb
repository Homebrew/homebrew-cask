cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.7.4"
  sha256 arm:   "7b37bccadbf68a58ba64a50783dc61b08edaa760dde96e7e44992fe73bcc8a6e",
         intel: "91c6c84488a822de4f4cfa87259b61afa53b4744dd98f772b85bd8c5e9f5b7a1"

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
