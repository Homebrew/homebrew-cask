cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.7.2"
  sha256 arm:   "35ba02590a62ede38164394d97aba20d55f81f19bdf1a8c07ecc656127153e8d",
         intel: "03dde3e25dab8deab8d9af6414ca4dde87960f7d8b0524a57a3cd67fcacbca45"

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
