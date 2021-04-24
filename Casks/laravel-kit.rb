cask "laravel-kit" do
  version "2.0.3"
  sha256 "0cab75388df17248bc0058737c069b85a0c64d15a5e63afb4926d3164b6fe19a"

  url "https://github.com/tmdh/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}-mac.zip",
      verified: "github.com/tmdh/laravel-kit/"
  name "Laravel Kit"
  desc "Desktop Laravel admin panel app"
  homepage "https://tmdh.github.io/laravel-kit"

  auto_updates true

  app "Laravel Kit.app"
end
