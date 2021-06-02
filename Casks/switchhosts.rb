cask "switchhosts" do
  version "4.0.2.6057"

  if Hardware::CPU.intel?
    sha256 "c522611862ef91a1cf204c39b385ac44397cfae84e05aa4ea12d21db25badb02"
    url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts_#{version}.dmg",
        verified: "github.com/oldj/SwitchHosts/"
  else
    sha256 "445b3986eb270443eb74e34dd96359de56bedbfc03690c0905aec1f1dbe2447a"
    url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts_arm64_#{version}.dmg",
        verified: "github.com/oldj/SwitchHosts/"
  end

  name "SwitchHosts"
  desc "App to switch hosts"
  homepage "https://oldj.github.io/SwitchHosts/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{/SwitchHosts_(\d+(?:\.\d+)*)\.dmg}i)
  end

  app "SwitchHosts.app"
end
