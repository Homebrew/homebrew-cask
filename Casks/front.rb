cask "front" do
  version "3.28.3"
  sha256 "2837108c8e88fe808098c233f2e303e67dfffd8f2cac373e2a169d288a5b7f29"

  url "https://dl.frontapp.com/desktop/builds/#{version}/Front-#{version}.zip"
  name "Front"
  desc "Customer communication platform"
  homepage "https://frontapp.com/"

  livecheck do
    url "https://dl.frontapp.com/desktop/updates/latest/mac/latest-mac.yml"
    strategy :electron_builder
  end

  app "Front.app"
end
