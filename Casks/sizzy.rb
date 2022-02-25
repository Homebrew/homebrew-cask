cask "sizzy" do
  version :latest
  sha256 :no_check

  if Hardware::CPU.intel?
    url "https://proxy.sizzy.co/updates/download/mac?arch=intel"
  else
    url "https://proxy.sizzy.co/updates/download/mac?arch=arm64"
  end

  name "Sizzy"
  desc "Tool to simulate responsive designs on multiple devices"
  homepage "https://sizzy.co/"

  app "Sizzy.app"
end
