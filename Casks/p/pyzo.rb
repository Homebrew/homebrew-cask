cask "pyzo" do
  arch arm: "arm64", intel: "x86_64"

  version "4.21.0"
  sha256 arm:   "2b73d1a2a0dc61d144852349e4701c2324d3329fda7bbdd1299a26292abdf973",
         intel: "94883a4133a1ab767163b1bf56db2ad12469e423bc0301d5659f2b38573f3cfe"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_#{arch}.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
