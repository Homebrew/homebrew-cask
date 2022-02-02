cask "openaudible" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.4.1"

  if Hardware::CPU.intel?
    sha256 "27a6785dbef62f16bfe20894fe3c09f1ae11f84ef75113a36ded9d074fc1e9b4"
  else
    sha256 "b7389a6f1f6cae5a72e76f3e5598cbd3b048fdfdec9b5fea03738fe1a3b59e8a"
  end

  url "https://github.com/openaudible/openaudible/releases/download/v#{version}/OpenAudible_#{version}.dmg",
      verified: "github.com/openaudible/"
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
