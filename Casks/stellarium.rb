cask "stellarium" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "0.22.0"

  if Hardware::CPU.intel?
    sha256 "8e55d08d87769c2f02d807d0480839560ad00b93eae74ab2d39a1d5a0541b03d"
  else
    sha256 "b9fed25a9272de8300155ad656a527e5878fc1e9fd6a091a14f30830442bbd7d"
  end

  url "https://github.com/Stellarium/stellarium/releases/download/v#{version.major_minor_patch}/Stellarium-#{version}-#{arch}.zip",
      verified: "github.com/Stellarium/stellarium/"
  name "Stellarium"
  desc "Tool to render realistic skies in real time on the screen"
  homepage "https://stellarium.org/"

  depends_on macos: ">= :sierra"

  app "Stellarium.app"

  zap trash: "~/Library/Preferences/Stellarium"
end
