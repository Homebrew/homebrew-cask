cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.19"
  sha256 arm:   "a8c0e2c7e0ac7f4a1e8fe6a03d570e17054ab9a79631ecdca082e52512525b50",
         intel: "0253b9f17eee6d5b10d5849f74ebdba385789518945102dd301e0ba8d02a67b9"

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
