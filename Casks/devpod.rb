cask "devpod" do
  arch arm: "aarch64", intel: "x64"

  version "0.1.9"
  sha256 arm:   "faf6aafcb26033978d925eef8a3929c9fa3bd91ac22d7406e9db5ca04ad7d09c",
         intel: "a49b755d7ef9c24ce068a9fa0d24683f3466e0aa5db60270582a3d200fb6e9ce"

  url "https://github.com/loft-sh/devpod/releases/download/v#{version}/DevPod_macos_#{arch}.app.tar.gz",
      verified: "github.com/loft-sh/devpod/"
  name "DevPod"
  desc "UI to create reproducible developer environments based on a devcontainer.json"
  homepage "https://devpod.sh/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "DevPod.app"
end
