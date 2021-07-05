cask "marathon" do
  version "20210408"
  sha256 "2b0be87a12f697c83bb2560c6a4e2a218e643fcd5035f0cc6b75db1d770753cc"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon"
  desc "First-person shooter, first in a trilogy"
  homepage "https://alephone.lhowon.org/"

  app "Marathon.app"
end
