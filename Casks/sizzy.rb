cask "sizzy" do
  version "47.0.0"
  sha256 :no_check

  url "https://sizzy.co/get-app"
  name "Sizzy"
  desc "Tool to simulate responsive designs on multiple devices"
  homepage "https://sizzy.co/"

  livecheck do
    url "https://sizzy.co/get-app"
    strategy :header_match
  end

  auto_updates true

  app "Sizzy.app"
end
