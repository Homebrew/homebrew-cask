cask "kubenav" do
  arch = Hardware::CPU.intel? ? "amd64" : "arm64"

  version "3.9.0"

  if Hardware::CPU.intel?
    sha256 "81dfd86497a1a5081cec1c4a544eb7959218db0107ddc3758b0b3e5367db950f"
  else
    sha256 "ad3d0778d85cad9271ba5942f9bc6de0130edcb28d1ecc9cfdb0ee3e4c040222"
  end

  url "https://github.com/kubenav/kubenav/releases/download/#{version}/kubenav-darwin-#{arch}.zip",
      verified: "github.com/kubenav/kubenav/"
  name "kubenav"
  desc "Navigator for your Kubernetes clusters right in your pocket"
  homepage "https://kubenav.io/"

  app "kubenav.app"
  binary "#{appdir}/kubenav.app/Contents/MacOS/kubenav"
end
