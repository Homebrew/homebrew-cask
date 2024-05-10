cask "openshift-client" do
  arch arm: "-arm64"

  version "4.15.13"
  sha256 arm:   "c8865c50864af24988e18aea6d685db42ab28b7c7326c6b024e8c8b8e358e54d",
         intel: "f8d2c62bd794212d0875cbb1381d7a645ecc6ddc2575b470e230d95b83566acf"

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
