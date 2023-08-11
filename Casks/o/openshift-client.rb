cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.9"
  sha256 arm:   "f50e763fc97e469d038de33f860d22bd6eac3a3707bfbd31b85a30ae7ae85ab3",
         intel: "b9c9a969592fcd8f5cdbf75ad57f24d450c86f28816833a52f3b4628509262f6"

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
