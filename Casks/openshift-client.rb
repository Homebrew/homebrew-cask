cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.23"
  sha256 arm:   "9a2fa6584b73cb5244d47c5e4c2416819548c57ae1a219f786e4a8caac794b74",
         intel: "fbd027a48002e7a1601295d6174d0ab461e8b618449adb0b6d37f680574a5b01"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"
end
