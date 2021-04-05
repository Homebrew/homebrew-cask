cask "marathon2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "20210328"
  sha256 "b11d49d06848dc5958a967f55f564a4e9d878f9fc62e4fa62e1ec0bfeb651e4f"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon2-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon 2"
  desc "First-person shooter, second in a trilogy"
  homepage "https://alephone.lhowon.org/"

  app "Marathon 2.app"
end
