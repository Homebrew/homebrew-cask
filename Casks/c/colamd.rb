cask "colamd" do
  arch arm: "arm64", intel: "x64"

  version "2.4.4"
  sha256 arm:   "a8d3c8fecad84567e3e7cea87475ff5b9bd64dfe2ee4db9c1820256f9a6f7bc0",
         intel: "b77593cb081b6f400d888f33cc2b988873449d789ca265de95343614421c03cf"

  url "https://github.com/marswaveai/ColaMD/releases/download/v#{version}/ColaMD-#{version}-#{arch}.dmg"
  name "ColaMD"
  desc "Markdown editor"
  homepage "https://colamd.com/"

  auto_updates true
  depends_on macos: :ventura

  app "ColaMD.app"

  zap trash: [
    "~/.colamd",
    "~/Library/Application Support/colamd",
    "~/Library/Preferences/ai.marswave.colamd.plist",
  ]
end
