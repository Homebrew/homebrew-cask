cask "laravel-kit" do
  version "2.0.0"
  sha256 "b8f98248b3a51606d5af3cb39e5c854cf9d486d48ba5efd5a095c56d29aaa90d"

  url "https://github.com/tmdh/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}-mac.zip",
      verified: "github.com/tmdh/laravel-kit/"
  appcast "https://github.com/tmdh/laravel-kit/releases.atom"
  name "Laravel Kit"
  desc "Desktop app for executing Laravel artisan commands"
  homepage "https://tmdh.github.io/laravel-kit"

  auto_updates true

  app "Laravel Kit.app"
end
