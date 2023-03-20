cask "rapidweaver" do
  version "9.1.1,21049"
  sha256 "3eb61a8f38a4b279a6674e31e59eea8d6bf2c9dff54be9b0bb86793867bc4252"

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
