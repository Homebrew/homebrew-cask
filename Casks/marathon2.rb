cask "marathon2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "20230529"
  sha256 "3d85be6ae7b45c926fad71cb6b05237836c8a6bdf0af5299777a138a3aa6eb36"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon2-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon 2"
  desc "First-person shooter, second in a trilogy"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/Marathon2[._-]v?(\d+(?:\.\d+)*)[._-]Mac\.dmg}i)
  end

  app "Marathon 2.app"
end
