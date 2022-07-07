cask "masscode" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.7.1"

  if Hardware::CPU.intel?
    sha256 "4f91b64ceed0b5c73e9873264deb85ff054ec5b3912baf34982421b7eb3edf4c"
  else
    sha256 "283fab2a8c0179a54da9a5560221ddaa4328ebef3c5014a43a13c56126f3b8a0"
  end

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "https://github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Open-source code snippets manager for developers"
  homepage "https://masscode.io/"

  app "massCode.app"
end
