cask "sizzy" do
  version "59.0.0"
  sha256 :no_check

  url "https://proxy.sizzy.co/updates/download"
  name "Sizzy"
  desc "Tool to simulate responsive designs on multiple devices"
  homepage "https://sizzy.co/"

  livecheck do
    url :url
    strategy :header_match
  end

  auto_updates true

  app "Sizzy.app"
end
