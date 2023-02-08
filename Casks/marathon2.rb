cask "marathon2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "20230119"
  sha256 "2c3fc5dc92b386275d972054e72b8d8ad9db7676d10703d2faa02bede9871ebf"

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
