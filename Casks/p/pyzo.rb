cask "pyzo" do
  arch arm: "arm64", intel: "x86_64"

  version "4.19.0"
  sha256 arm:   "38cf58c8dc8e76cc80b40181ccf6dac397f6357f07d85342f9e8483039f1fa61",
         intel: "037438a4a6a4163544c368a261a2c33a555c562cb81dc029b777b22570b59f98"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_#{arch}.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
