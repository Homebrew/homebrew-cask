cask "sameboy" do
  version "0.14.6"
  sha256 "e1bead0d18015aea1d9bea5a5a935fd5b5b7c265dffbe216dd6fdafb765d4cf5"

  url "https://github.com/LIJI32/SameBoy/releases/download/v#{version}/sameboy_cocoa_v#{version}.zip",
      verified: "github.com/LIJI32/SameBoy/"
  name "SameBoy"
  desc "Game Boy and Game Boy Color emulator written in C"
  homepage "https://sameboy.github.io/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sierra"

  app "SameBoy.app"
end
