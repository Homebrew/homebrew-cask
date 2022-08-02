cask "openaudible" do
  arch = Hardware::CPU.intel? ? "x86_64" : "aarch64"

  version "3.5.8"

  if Hardware::CPU.intel?
    sha256 "bc0464fa7e5ab10c33ec7b3bf3e58525129d42fbba9180b8f68c77543f14e81a"
  else
    sha256 "25dfa1d1c4bc1aca2e3f071217c42080c52f5ff299e1e1a8ddc199b0755f05e2"
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
