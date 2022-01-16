cask "marathon-infinity" do
  version "20220115"
  sha256 "f3903691f5328867592fd10f08fd6e0f6ab29db854caa2e92b670770e6659e6d"

  url "https://github.com/Aleph-One-Marathon/alephone/releases/download/release-#{version}/MarathonInfinity-#{version}-Mac.dmg",
      verified: "github.com/Aleph-One-Marathon/alephone/"
  name "Marathon Infinity"
  desc "First-person shooter, third in a trilogy"
  homepage "https://alephone.lhowon.org/"

  livecheck do
    url :url
    strategy :github_latest
    regex(%r{href=.*?/MarathonInfinity-(\d+)-Mac\.dmg}i)
  end

  app "Marathon Infinity.app"
end
