cask "sizzy" do
  arch = Hardware::CPU.intel? ? "intel" : "arm64"

  version :latest
  sha256 :no_check

  url "https://proxy.sizzy.co/updates/download/mac?arch=#{arch}"
  name "Sizzy"
  desc "Tool to simulate responsive designs on multiple devices"
  homepage "https://sizzy.co/"

  app "Sizzy.app"
end
