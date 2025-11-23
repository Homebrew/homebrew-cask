cask "blobby-volley2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "1.1.1"
  sha256 "a2e2a67a3c77a0ace49b4db3b4ee2eaeba8f9c5b02a15b3eec5b033bba36a879"

  url "https://downloads.sourceforge.net/blobby/blobby2-macosx-#{version}.dmg",
      verified: "downloads.sourceforge.net/blobby/"
  name "Blobby Volley 2"
  desc "Head-to-head multiplayer ball game"
  homepage "https://blobbyvolley.de/"

  depends_on macos: ">= :ventura"

  app "blobby.app"

  zap trash: "~/Library/Application Support/blobby"
end
