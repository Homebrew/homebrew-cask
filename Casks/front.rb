cask "front" do
  version "3.27.5"
  sha256 "af436e525177799efabf762b394bcc41407547bdb6db39b1558c04d97582e333"

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
