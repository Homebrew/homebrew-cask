cask "hostsx" do
  version "2.8.0"
  sha256 "20f87eca89f92957e9d35c1854318659998a5663038162778016d9e2d581a07d"

  url "https://github.com/ZzzM/HostsX/releases/download/#{version}/HostsX.dmg"
  name "HostsX"
  desc "Local hosts update tool"
  homepage "https://github.com/ZzzM/HostsX"

  depends_on macos: ">= :sierra"

  app "HostsX.app"
end
