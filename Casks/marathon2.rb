cask "marathon2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "20220115"
  sha256 "0820795d91da7c5e0db93f5b173f5143522bff35ad23523074d488f516b72515"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon2-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon 2"
  desc "First-person shooter, second in a trilogy"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/Marathon2-(\d+)-Mac\.dmg}i)
  end

  app "Marathon 2.app"
end
