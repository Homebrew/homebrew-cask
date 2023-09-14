cask "openshift-client" do
  arch arm: "-arm64"

  version "4.13.13"
  sha256 arm:   "a17c077d6dd4089857e490cb4187db39c6c21b865378c200da629c57e6ff15d1",
         intel: "ee0c82d9e2bb4f78aba28f5e20b6d657f39124d7148e044fff64af6934c02301"

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
