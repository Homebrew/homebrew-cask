cask "hostsx" do
  version "2.9.0"
  sha256 "5a8fc616b6e28465ba9edfbbd647285f33add8b1790c517ece55df3aec5b73a0"

  url "https://github.com/ZzzM/HostsX/releases/download/#{version}/HostsX.dmg"
  name "HostsX"
  desc "Local hosts update tool"
  homepage "https://github.com/ZzzM/HostsX"

  depends_on macos: ">= :sierra"

  app "HostsX.app"
end
