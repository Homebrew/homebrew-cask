cask "stellarium" do
  arch = Hardware::CPU.intel? ? "x86_64" : "arm64"

  version "0.22.1"

  if Hardware::CPU.intel?
    sha256 "a3993feda9b9401f5838ff1c43f1d3c22d9c9ef2c085015f4e6b4a9447b73924"
  else
    sha256 "a9a1bb92b6ec8df2722da57c1d3e5162f9ca0d4b12fbc642c7ee0d947ffa9b53"
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
