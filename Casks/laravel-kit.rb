cask "laravel-kit" do
  arch arm: "-arm64", intel: ""

  version "2.0.7"
  sha256 arm:   "906209ab2ac81803caffa95227c414dabe7161f5dba075500507d7241b11828a",
         intel: "fe0a3f8a210c646bfd6e449046a18523f4e4ca2d68d65ade14773b889e6b39d8"

  url "https://github.com/tmdh/laravel-kit/releases/download/v#{version}/laravel-kit-#{version}#{arch}-mac.zip",
      verified: "github.com/tmdh/laravel-kit/"
  name "Laravel Kit"
  desc "Desktop Laravel admin panel app"
  homepage "https://tmdh.github.io/laravel-kit"

  app "Laravel Kit.app"
end
