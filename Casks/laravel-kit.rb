cask "laravel-kit" do
  version "2.0.1"
  sha256 "3b4868fb20b6d6bc82d78ac476367d288a96620b251b777cce269f13612130a0"

  url "https://github.com/tmdh/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}-mac.zip",
      verified: "github.com/tmdh/laravel-kit/"
  appcast "https://github.com/tmdh/laravel-kit/releases.atom"
  name "Laravel Kit"
  desc "A desktop Laravel admin panel app"
  homepage "https://tmdh.github.io/laravel-kit"

  auto_updates true

  app "Laravel Kit.app"
end
