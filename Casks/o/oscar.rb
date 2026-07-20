cask "oscar" do
  arch arm: "ARM", intel: "Intel"

  version "2.0.1"
  sha256 arm:   "78cd674ba7755ddcf505dd870c6e1d366c6e658a57482d91593eb191e611c769",
         intel: "b44aedb2855583457985fd9fc4467983254a24ce51bfb43134e72be64e12194e"

  url "https://www.sleepfiles.com/OSCAR/#{version}/OSCAR#{version.major_minor.no_dots}-#{version}-#{arch}.dmg"
  name "OSCAR"
  desc "CPAP Analysis Reporter"
  homepage "https://www.sleepfiles.com/OSCAR/"

  livecheck do
    url :homepage
    regex(%r{href=.*?/OSCAR.*?v?(\d+(?:\.\d+)+)(?:[._-]#{arch})?\.dmg}i)
  end

  depends_on macos: :ventura

  app "OSCAR#{version.major_minor.no_dots}.app"

  zap trash: [
    "~/Library/Preferences/org.oscar-team.OSCAR.plist",
    "~/Library/Saved Application State/org.oscar-team.OSCAR.savedState",
  ]
end
