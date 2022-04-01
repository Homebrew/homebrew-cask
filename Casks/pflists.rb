cask "pflists" do
  version "1.0.2"
  sha256 "9fcc95409e095d601f351b46d5a94aeb922fa1fe40c7d663ae6f05640fa4ff6a"

  url "https://www.hanynet.com/pflists-#{version}.zip"
  name "PFLists"
  homepage "https://www.hanynet.com/pflists/"

  livecheck do
    url "https://www.hanynet.com/pflists/"
    regex(%r{href=.*?/pflists-(\d+(?:\.\d+)*)\.zip}i)
  end

  app "PFLists.app"
end
