cask "openaudible" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.5.2"

  if Hardware::CPU.intel?
    sha256 "35274d767cdb9500473febee8a59c82d82a2d4615249343d959cdfc9d237941c"
  else
    sha256 "868e62eae4e4f5af9aa1d3a907e464946d5a3f9586fbb3b135b9c33404f99b01"
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
