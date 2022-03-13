cask "pyzo" do
  version "4.12.0"
  sha256 "eccd93c7a0d618b8cea0492bee1751bdba9ebead489806ca238c2f5919d91d6e"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_x86_64.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
