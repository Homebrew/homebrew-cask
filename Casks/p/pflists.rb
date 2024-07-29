cask "pflists" do
  version "1.0.2"
  sha256 "9fcc95409e095d601f351b46d5a94aeb922fa1fe40c7d663ae6f05640fa4ff6a"

  url "https://www.hanynet.com/pflists-#{version}.zip"
  name "PFLists"
  desc "Basic PF firewall frontend"
  homepage "https://www.hanynet.com/pflists/"

  disable! date: "2024-07-16", because: "is 32-bit only"

  app "PFLists.app"
end
