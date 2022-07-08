cask "masscode" do
  arch = Hardware::CPU.intel? ? "" : "-arm64"

  version "2.8.0"

  if Hardware::CPU.intel?
    sha256 "9b1f8f0f702c0a5fe3a96acb8c8db9d32c9a5c89398472d865f0d2dbcd8d09e1"
  else
    sha256 "d2748ab60275094a2ea714108ba83d519c0393137396f4373436469da3b50b0b"
  end

  url "https://github.com/massCodeIO/massCode/releases/download/v#{version}/massCode-#{version}#{arch}.dmg",
      verified: "https://github.com/massCodeIO/massCode/"
  name "massCode"
  desc "Open-source code snippets manager for developers"
  homepage "https://masscode.io/"

  app "massCode.app"
end
