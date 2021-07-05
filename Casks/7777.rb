cask "7777" do
  version "1.0.5"
  sha256 "844ce9f32d17516cf29a45a728910f5b2e0424ce12dfee7df934e93f0b9c70b2"

  url "https://releases.port7777.com/#{version}/macos/7777"
  name "7777"
  desc "Remote AWS database on local port 7777"
  homepage "https://port7777.com/"

  binary "7777"
end
