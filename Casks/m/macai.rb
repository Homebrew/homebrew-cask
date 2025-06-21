cask "macai" do
  version "2.1.0"
  sha256 "3fa056ddd9bbfcfe1d4e30cc4e013ac0591cd36b453d385e13d86f67fcdbe196"

  url "https://github.com/Renset/macai/releases/download/v#{version}/macai.#{version}.Universal.zip"
  name "macai"
  desc "Native chat application for all major LLM APIs"
  homepage "https://github.com/Renset/macai"

  auto_updates true
  depends_on macos: ">= :ventura"

  app "macai.app"

  zap trash: [
    "~/Library/Application Scripts/notfullin.com.macai",
    "~/Library/Containers/notfullin.com.macai",
  ]
end
