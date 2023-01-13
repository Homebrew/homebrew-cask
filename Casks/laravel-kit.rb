cask "laravel-kit" do
  arch arm: "-arm64", intel: ""

  version "2.0.7"
  sha256 arm:   "f4e91f92e5e85609567c173812a7dcfdae6c1b1103dca71a9b56890fa27e1198",
         intel: "7f3073655b32191360c378897a819fe4560ffad1e784469bad7a9089d0b31ca4"

  url "https://github.com/tmdh/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}#{arch}.dmg",
      verified: "github.com/tmdh/laravel-kit/"
  name "Laravel Kit"
  desc "Desktop Laravel admin panel app"
  homepage "https://tmdh.github.io/laravel-kit"

  app "Laravel Kit.app"
end
