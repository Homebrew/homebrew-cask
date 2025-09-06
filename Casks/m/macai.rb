cask "macai" do
  version "2.2.1"
  sha256 "f7949b98f9bb9ac0c46dff3f3642819727875005ecff5a726d4e7db3ab6d7dd2"

  url "https://github.com/Renset/macai/releases/download/v#{version}/macai.#{version}.Universal.zip"
  name "macai"
  desc "Native chat application for all major LLM APIs"
  homepage "https://github.com/Renset/macai"

  auto_updates true
  depends_on macos: ">= :sonoma"

  app "macai.app"

  zap trash: [
    "~/Library/Application Scripts/notfullin.com.macai",
    "~/Library/Containers/notfullin.com.macai",
  ]
end
