cask "marathon2" do
  # NOTE: "2" is not a version number, but an intrinsic part of the product name
  version "20240119"
  sha256 "7947b9d0efe14452b67785f67031198519d4c2c3e7b693835ffb607954bf4b4d"

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

  zap trash: [
    "~/Library/Application Support/Marathon 2",
    "~/Library/Logs/Marathon 2 Log.txt",
    "~/Library/Preferences/Marathon 2",
    "~/Library/Saved Application State/org.bungie.source.Marathon2.savedState",
  ]
end
