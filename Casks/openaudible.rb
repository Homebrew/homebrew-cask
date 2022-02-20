cask "openaudible" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.5"

  if Hardware::CPU.intel?
    sha256 "e1f5a22d7bdf7307937c519cb834cca7ba43efa7ffb7d8af1d2a8b66d0f3c911"
  else
    sha256 "db73b33ed8bed526844f7a5861cbb8bb3780c709dcf2fb587b51554bcf23e680"
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
