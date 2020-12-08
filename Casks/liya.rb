cask "liya" do
  version "5.0.4"
  sha256 "678136b9bf2443b7717b95f958a353c7f51af8508c1faa95dbf9d4c7bbe660e7"

  url "https://cutedgesystems.com/downloads/Liya.zip"
  name "Liya"
  homepage "https://cutedgesystems.com/software/liya/"

  depends_on macos: ">= :catalina"

  app "Liya.app"
end
