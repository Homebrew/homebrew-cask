cask "sizzy" do
  version :latest

  if Hardware::CPU.intel?
    sha256 :no_check
    url "https://proxy.sizzy.co/updates/download/mac?arch=intel"
  else
    sha256 :no_check
    url "https://proxy.sizzy.co/updates/download/mac?arch=arm64"
  end
  
  name "Sizzy"
  desc "Tool to simulate responsive designs on multiple devices"
  homepage "https://sizzy.co/"

  auto_updates true

  app "Sizzy.app"
end
