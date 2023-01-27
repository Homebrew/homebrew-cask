cask "pyzo" do
  version "4.12.5"
  sha256 "cfb07ed9c6fc9fcc3dad70dc29b33297cd78508c46987e444c5a82f31d74c5b2"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_x86_64.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
