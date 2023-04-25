cask "openshift-client" do
  arch arm: "-arm64"

  version "4.12.14"
  sha256 arm:   "7e3a398d4798784f76a7a90441939e54ad1b46f49c08a3c5d4af0a3443ea5c53",
         intel: "e1e41a72d30348d98495d49f94eff0607534d02e2c4de29c38339747f4e72b9c"

  url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/#{version}/openshift-client-mac#{arch}.tar.gz"
  name "Openshift Client"
  desc "Red Hat OpenShift Container Platform command-line client"
  homepage "https://www.openshift.com/"

  livecheck do
    url "https://mirror.openshift.com/pub/openshift-v#{version.major}/clients/ocp/"
    regex(%r{href=["']?v?(\d+(?:\.\d+)+)/?["' >]}i)
  end

  binary "oc"

  zap trash: "~/.kube/config"
end
