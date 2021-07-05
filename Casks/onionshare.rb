cask "onionshare" do
  version "2.3.2"
  sha256 "2620e327340da239562cb2300ce4885f20e9f92faabdcac9cafd5bed2a6335a3"

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
