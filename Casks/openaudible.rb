cask "openaudible" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.5.3"

  if Hardware::CPU.intel?
    sha256 "bdb1b3098986a7963fe90dc58561fd7275667358b711109238ba97efdac0ff8c"
  else
    sha256 "09874b95ca2a4f8d36209d6995f3386c1920eac39c5a38287e56f7a7b72afb12"
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
