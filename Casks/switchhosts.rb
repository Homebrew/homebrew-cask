cask "switchhosts" do
  version "4.0.3.6070"

  if Hardware::CPU.intel?
    sha256 "bba1430d6253ee0a27a474f3d8ad090c639b0a5ab81ec1d0ff42abdf3781c394"
    url "https://github.com/oldj/SwitchHosts/releases/download/v#{version.major_minor_patch}/SwitchHosts_#{version}.dmg",
        verified: "github.com/oldj/SwitchHosts/"
  else
    sha256 "e7c02ff1a5a69d456cd65384c7a5351dfed3354a17f05694efbb6cbbde1d6f7d"
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
