cask "hostsx" do
  version "2.8.2"
  sha256 "316566cebda222aa93ad1469a386375387a911c4f696a150034df627a358fec5"

  url "https://github.com/ZzzM/HostsX/releases/download/#{version}/HostsX.dmg"
  name "HostsX"
  desc "Local hosts update tool"
  homepage "https://github.com/ZzzM/HostsX"

  depends_on macos: ">= :sierra"

  app "HostsX.app"
end
