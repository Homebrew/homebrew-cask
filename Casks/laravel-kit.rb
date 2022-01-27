cask "laravel-kit" do
  version "2.0.5"
  sha256 "b52d7ce4e5a8032a3d9cd12dbc5c6ad9b2cf8107b7502b25bec53b5f56ef3d6a"

  url "https://github.com/tmdh/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}-mac.zip",
      verified: "github.com/tmdh/laravel-kit/"
  name "Laravel Kit"
  desc "Desktop Laravel admin panel app"
  homepage "https://tmdh.github.io/laravel-kit"

  auto_updates true

  app "Laravel Kit.app"
end
