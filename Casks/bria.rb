cask "bria" do
  version "6.5.2,109387"
  sha256 "0cf8ae8f637c59b0820f6ccc192d48fcf833af1ef90379850af84f834061dc8b"

  url "https://counterpath.s3.amazonaws.com/downloads/Bria_#{version.csv.first}_#{version.csv.second}.dmg",
      verified: "counterpath.s3.amazonaws.com/"
  name "Bria"
  desc "Softphone application"
  homepage "https://www.counterpath.com/bria-solo/"

  app "Bria.app"
end
