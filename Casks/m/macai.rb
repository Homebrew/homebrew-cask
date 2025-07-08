cask "macai" do
  version "2.1.1"
  sha256 "d477a2e5e1800feac0795176a381605c157b96f0a1ef17d48574ad4701b181f1"

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
