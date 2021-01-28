cask "sysdig-inspect" do
  version "0.5.0"
  sha256 "15cd21f309258f5017129e0983e475423d95eb54cbe6e4e25b2e509282122a8e"

  url "https://download.sysdig.com/stable/sysdig-inspect/sysdig-inspect-#{version}-mac.dmg",
      verified: "download.sysdig.com/stable/sysdig-inspect/"
  name "Sysdig Inspect"
  homepage "https://github.com/draios/sysdig-inspect"

  livecheck do
    url "https://github.com/draios/sysdig-inspect"
    strategy :github_latest
  end

  app "Sysdig Inspect.app"
end
