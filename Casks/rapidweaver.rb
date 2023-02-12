cask "rapidweaver" do
  version "9.0.0,21034"
  sha256 "d097b873da4f8b09d500a9d200b1a1b8f4d36334264379435ad52cfd49680917"

  url "https://dl.devant.io/v1/3c53887f-427a-4af7-9144-ee16178c62f4/#{version.csv.second}/RapidWeaver.zip",
      verified: "dl.devant.io/v1/3c53887f-427a-4af7-9144-ee16178c62f4/"
  name "RapidWeaver"
  desc "Web design software"
  homepage "https://www.realmacsoftware.com/rapidweaver/"

  livecheck do
    url "https://update.devant.io/v1/feed/3c53887f-427a-4af7-9144-ee16178c62f4"
    strategy :sparkle
  end

  depends_on macos: ">= :mojave"

  app "RapidWeaver.app"
end
