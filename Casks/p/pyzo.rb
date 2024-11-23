cask "pyzo" do
  arch arm: "arm64", intel: "x86_64"

  version "4.18.0"
  sha256 arm:   "106e75216a850e63dd135f702ade80eab83c5528a4bc68af4ad89f9bfef33d5b",
         intel: "b9b277fcb48604d6592b3bdc48be79448f1e38c9e611618b1566fa44f82f9507"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_#{arch}.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
