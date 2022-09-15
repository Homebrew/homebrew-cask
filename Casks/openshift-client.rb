cask "openshift-client" do
  arch arm: "-arm64"

  version "4.11.4"
  sha256 arm:   "7225dcc8658d39d252f048181b8e8305e7176d5c7662bac46af609d5e0fe5252",
         intel: "4e19bc490df583b1629faa5a656f1fddd0d0476c0333810d70946a4c5aa59383"

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
