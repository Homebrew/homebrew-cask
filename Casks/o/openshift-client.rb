cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.17"
  sha256 arm:   "994180c8cd32a9800b9924141cea890acbdb3145e5b3c321ec98a621a040061e",
         intel: "4028058a25575829468e994fdab16a884c1b34665fa044a72c2c3e55d944e7a0"

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
