cask "laravel-kit" do
  version "2.0.6"
  sha256 "62c7ca0541b70009c842c672833a7ba269ae8abf4493b52fec9c18465d86ee8c"

  url "https://github.com/tmdh/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}-mac.zip",
      verified: "github.com/tmdh/laravel-kit/"
  name "Laravel Kit"
  desc "Desktop Laravel admin panel app"
  homepage "https://tmdh.github.io/laravel-kit"

  auto_updates true

  app "Laravel Kit.app"
end
