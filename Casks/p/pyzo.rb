cask "pyzo" do
  version "4.14.4"
  sha256 "de99d4f7d0b38d9ad675ac0c5c75e9447c0ced57d239c08fa2873d78d001eba7"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_x86_64.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
