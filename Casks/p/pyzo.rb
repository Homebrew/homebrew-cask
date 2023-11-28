cask "pyzo" do
  version "4.14.2"
  sha256 "9577c6ceff764c3d3822a950cbce6eda2b38898d6daf0d78f9281212f40e7c9f"

  url "https://github.com/pyzo/pyzo/releases/download/v#{version}/pyzo-#{version}-macos_x86_64.dmg",
      verified: "github.com/pyzo/pyzo/"
  name "Pyzo"
  desc "Python IDE focused on interactivity and introspection"
  homepage "https://pyzo.org/"

  app "pyzo.app"

  zap trash: "~/Library/Application Support/pyzo"
end
