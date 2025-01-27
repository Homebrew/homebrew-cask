cask "macai" do
  version "2.0.5"
  sha256 "31affa2a9a6239102106ed0182af12e6a3a3ff74379cbe774c98c7d766c3371d"

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
