cask "openshift-client" do
  arch arm: "-arm64"

  version "4.12.2"
  sha256 arm:   "1ba740b2cae1b3c279a7c854f8ff1d4b6f3dbac5a11aaeaccdadfc9f98ef159e",
         intel: "bd42189fa0faa036a457a19345ce5a20137b0101237ba4593b824025d9cdaaac"

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
