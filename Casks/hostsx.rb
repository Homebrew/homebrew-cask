cask "hostsx" do
  version "2.8.1"
  sha256 "acf2f6b909215ec2b822a2c88bc7a19b4f0f231b86d0184883f481de8b535bd6"

  url "https://github.com/ZzzM/HostsX/releases/download/#{version}/HostsX.dmg"
  name "HostsX"
  desc "Local hosts update tool"
  homepage "https://github.com/ZzzM/HostsX"

  depends_on macos: ">= :sierra"

  app "HostsX.app"
end
