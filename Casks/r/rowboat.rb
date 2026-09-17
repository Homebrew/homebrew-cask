cask "rowboat" do
  arch arm: "arm64", intel: "x64"

  version "1.0.3"
  sha256 arm:   "8dc86bcd3265f588ba21649dbdb094dc5d040a9cb432869f05fff0be7e92929e",
         intel: "a657ab29c12db7b69405facdb0b5465b83ac788dad1d148f775318fc81bafc52"

  url "https://github.com/rowboatlabs/rowboat/releases/download/v#{version}/Rowboat-darwin-#{arch}-#{version}.zip"
  name "Rowboat"
  desc "Open-source AI coworker, with memory"
  homepage "https://www.rowboatlabs.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :monterey

  app "Rowboat.app"

  zap trash: [
    "~/.rowboat",
    "~/Library/Application Support/Rowboat",
  ]
end
