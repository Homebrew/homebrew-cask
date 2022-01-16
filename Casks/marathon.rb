cask "marathon" do
  version "20220115"
  sha256 "e04f7fc9a12c80d254ad45eeec40ddcd2b853b25a8bd0d62ecba2a88c97c4df3"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/Marathon-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon"
  desc "First-person shooter, first in a trilogy"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/Marathon-(\d+)-Mac\.dmg}i)
  end

  app "Marathon.app"
end
