cask "laravel-kit" do
  arch arm: "-arm64", intel: ""

  version "2.0.8"
  sha256 arm:   "f5cc20ce507ca6bef4e6de99d7e00aee12f55d9ef01dab85be7f1a6074b8a045",
         intel: "fb748da7a99911a7b182ac7958862dfa1a9e036ec82529a2fb65e4b768c72b1a"

  url "https://github.com/tmdh/laravel-kit/releases/download/v#{version}/Laravel-Kit-#{version}#{arch}-mac.zip",
      verified: "github.com/tmdh/laravel-kit/"
  name "Laravel Kit"
  desc "Desktop Laravel admin panel app"
  homepage "https://tmdh.github.io/laravel-kit"

  app "Laravel Kit.app"
end
