cask "openaudible" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.5.7"

  if Hardware::CPU.intel?
    sha256 "4b55ab195ab994a5fba6ff9d9951c2486b86b9a3c5a998bae0b97617908d128a"
  else
    sha256 "2bd18b3565a99e9c50decaee87b65cd73fb72b9cac40b06af03931ac9b8187dc"
  end

  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}_#{arch}.dmg",
      verified: "github.com/openaudible/openaudible/"
  name "OpenAudible"
  desc "Audiobook manager for Audible users"
  homepage "https://openaudible.org/"

  livecheck do
    url :url
    strategy :github_latest
  end

  app "OpenAudible.app"

  zap trash: "/Library/OpenAudible"
end
