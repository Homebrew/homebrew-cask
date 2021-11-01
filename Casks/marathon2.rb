cask "marathon2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "20210408"
  sha256 "2972b63f7ac3e9fd804cfe66079bb1391b83f8199f2d3ecc4bf576c243191783"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon2-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon 2"
  desc "First-person shooter, second in a trilogy"
  homepage "https://alephone.lhowon.org/"

  app "Marathon 2.app"
end
