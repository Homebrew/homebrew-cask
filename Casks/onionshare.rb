cask "onionshare" do
  version "2.3.3"
  sha256 "3d003ab5b8fdb3a09eae305670db0666a9fe71751bde8ff24beecdea7b6eaaaf"

  url "https://onionshare.org/dist/#{version}/OnionShare-#{version}.dmg"
  name "OnionShare"
  desc "Securely and anonymously share files, host websites, and chat with friends"
  homepage "https://onionshare.org/"

  livecheck do
    url "https://onionshare.org/latest-version.txt"
    regex(/(\d+(?:\.\d+)*)/)
  end

  app "OnionShare.app"
end
